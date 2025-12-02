Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E692D063F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764698574; cv=none; b=GBeWGsDFll7PD9a5tHn6PvlmQqYSy+W95cx/IYlpaDoRjVyY2uyccly8GmtbqzLCBmvvzd13/VNMr2ReD/HJv1XWiOrfU/Lr0rjirq0KgNRV5ZMK5JmIFAR4bPtRd+JbIxCmedyXBwqO4fTHz/7YbUXr5mUmmc93JNwae07THdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764698574; c=relaxed/simple;
	bh=lYRnlagg2Jv6d5PjoZwDeyK73sIdxS6gJQXVRzqrdgo=;
	h=To:Subject:From:Message-Id:Date; b=LJodzCc0Y7i949s23NIFI9SM5VHizdouUu1miVMZ1V7Y7AOD4exPTr0CMCOgbMnnqTKSZpeGFqZ3E9wzmOuEfKaemDnLWzAkeliOpFnE9Kxc5vNr8B7mx672xmihlT1UzYACBPCEWaozXqgQtmosZlhuIlI/SDI/75vxl7pocBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMfnDOCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMfnDOCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8690C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764698573;
	bh=lYRnlagg2Jv6d5PjoZwDeyK73sIdxS6gJQXVRzqrdgo=;
	h=To:Subject:From:Date:From;
	b=qMfnDOCjsVqyEw3TpfzwMuqN4bkAQl+QudGxaMbERlFkV/vD91rOzIMjaHr+lIIHV
	 WWYhlVF4j6rGPwGLL3E1yDMtIcUIJ6KdEN8iju/kHdUzk3DoswoDzejVSepy6P0Jad
	 rtaqQsJVVKdqFjjP/J7dOyxv0ejyG0fz3wj5znUjguBWfUZCKQfNTs82zy7gV5NeO+
	 py3mg3FB/nCu0sW3Krs9S4CQ5+o/mv9b/8xJ8nbGXfAj3AruZUqBEHgAHgWZohqYQx
	 nnUeasGef+SS6Qe9SA+nyB1dfKnVrA/1mznePB0qSG/wGpUx9YYx6KZ1yIfalx4R+W
	 OPM/bSvWUg6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376ED1171E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469857358.17169.11646099989582776506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995d1561f5aef79a3ad0cf5d518370f4a0bd29891065d879e02d09d35a24e94f
Date: Tue, 02 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764698573
