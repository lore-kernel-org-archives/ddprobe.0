Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F84282EB
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760776194; cv=none; b=G7zTFMSo15niQrOyVMQIyJK0JxYmzHUrubMDXT3eqsxFQvpP+aCJyrwJVpb/XAm/j+5OQ9qbGFAzETUsaKzXLWADt41Ax1O5QDCgeqGD36nrFXKbiqlxS1kwfhml0B53gJTgnatVhHePdQE2FKlOYwTPLMYzv+slxbdTKkygzrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760776194; c=relaxed/simple;
	bh=9NwbD2gcv6oMZZgMInd0hgzmlRNhbS4dSLUUrxyoDbQ=;
	h=To:Subject:From:Message-Id:Date; b=MEEdZnl19Myz/lsdHKlxniVrJV2Ib1MMdCxhrr8Z8f8xKp6IglBsINC+4oPOxkz7/5UC4BS68UEGq6ZVBMueXy/NzA0/EcbNNr31b3UiUuzmGa8mu8s5yAP3Da++l8yQs85k2zUrBmdogdjJzrwS8+Rm5v6z64z+Paq4YcjagFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQc3Y6Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQc3Y6Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91CBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760776193;
	bh=9NwbD2gcv6oMZZgMInd0hgzmlRNhbS4dSLUUrxyoDbQ=;
	h=To:Subject:From:Date:From;
	b=pQc3Y6Q1xaRlzUT8GoNlIardtPSQ0NF88uHyXDWPhOm1iK9zzP0YLW/1Az38yaNnV
	 7OQJHy5XOaEbZ/F3EQetQc8smIanQa2BfD5ewFFJMo+R9EpjGIJZogIqLDCXeCrpSi
	 RTaZN/sHZVm4aC1EBQeibkqvnGLPsfNaWo4mWxrF5SR9bevfnXmPw5EpPKFuGM/UX/
	 xfc6AdDCVuAJCVOU4vRwnaBgNCCWHNsdNYfoEO6SA4TMzffLkDnSwk6cw2MqtPRyIb
	 QKADpbN+J1ZKD5KYTMhhsCHKEfaAE8UGCNvFzh8lkRGxtW3eWC3686L8/8HpdDiu9I
	 o+ZIo1d8Buc7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93471CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077619358.17591.14112208565418096496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f82182526a129221605e6cefccc9c85306010c3d9b1fda7f5c7581b4309e6bc
Date: Sat, 18 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760776193
