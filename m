Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241172E9EC3
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765194774; cv=none; b=DCxPBIUa2eTkM7+Ub5ktm0GKW5tyEWtC6TK5jBgqawxgEDvjbN+gM6+hcAr7xEknPPcykYUsfLbmHf8vF0Htrvmrm5QBCspHED85JAM5O3ZEJpjQ2qfdqFcaaVoqxkAYD+ux6vaidbyW1s+pJIB90yK4GpF22NhRBMabv85GF5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765194774; c=relaxed/simple;
	bh=PWS6Z4qcaGav1ibWxoNdV/2lF9XEPs4igaQFWkRKTg4=;
	h=To:Subject:From:Message-Id:Date; b=mzW0qUE4aszkxrcJA3Wa+92oBV24i2XuD9A2H2NBmsvewjfgAYD76I/d0hEE9TikeKYE4FsQGeWcZHgvw2cggyHaWmnqF6cYSnhg3CKxSFji1qGbN70WgoHLi6BauGvOVRHF8ehu81cKymDyCk+ixCYKBEn4cSVCoG2hLi45jtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPjTMaS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPjTMaS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765194773;
	bh=PWS6Z4qcaGav1ibWxoNdV/2lF9XEPs4igaQFWkRKTg4=;
	h=To:Subject:From:Date:From;
	b=IPjTMaS1tqH+ma52HZZGsowekgQ3DZ8RurrUHrKKkBYgK5F9C6TkbDlndqpYS89WM
	 0uEYQwTEQUnLH7FvkUXcyO5xXg6qnWwyVlwhaSV3HKF3MH5PHmzIhhtHQbUGVtCQM+
	 YEWkJvJf1em5UcassxnEDgMUSi4/VXzbuquaJPD27uA8pnEwg6nKsS/stacw895Trg
	 52KAQYtIWqMWU23SxFBeQ9/gXtXJrQA/ar7fRFWPmAFz7GguAdg2AUBrFM91yc+Wb7
	 9XWJhl/TZtQmb7RLRncIHgioVr0WfE7FOgwxy5RkXCiBEyaQLJLG2zUcwbEELmM5Hq
	 TRKiU+F7ZVgrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC1D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519477358.1398.6103052306237031754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cb776586fea0ddef16d60bd09e0bb14bd18781b5414cce1961e3dca7f9061d
Date: Mon, 08 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765194773
