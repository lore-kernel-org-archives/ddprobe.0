Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013FF316190
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770126234; cv=none; b=PWBnVADOFAChXSeNnbHQb93Wm/pNHLNzTG9pE2dufNBBKzbQ4Z8X6im78epPC3Fq7D5YmT7Pl+1iVuCceQui4jFUwdwZ9qPLKt5ukUiMDPdFTFKACqBsd3IW4yTgvQtODUOL9QWzidRSHtWsJ2ZQaUgjUst61ivi801sDHtnLl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770126234; c=relaxed/simple;
	bh=UsHAhFmVfPSTndynWZllYupznFRlp8pCryCxQGmvPM8=;
	h=To:Subject:From:Message-Id:Date; b=KxsYCdSaPDyZgq/R9Ea3W5DZG7a+VBKvbAH4reQsSKdEpD/goGG9MiVHHxzYXBkF2I6fcEdFH1D9R2ZjZPdMpjSDk0gwYcx1kHbmsNfSVqV88hm3lIASEp/FQLgOlW5s/h/nUxIhvNS9DrfktQ5VqGL0k5CKIj++e0FYMDrVt+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXQAwnf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXQAwnf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7618C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770126233;
	bh=UsHAhFmVfPSTndynWZllYupznFRlp8pCryCxQGmvPM8=;
	h=To:Subject:From:Date:From;
	b=gXQAwnf67NuCn86/yLaYAkF56ymEDWITjNK6gCektg3BO6J2DU4/yZwbPPEBAhxP7
	 EYvmdby/ahyNPBshaUFFoJ3cG4MSm8yZLw15+0DZXIJ0HVAIR0fcA6rHKYcp19xfke
	 a488BjM6Pn1JoNnGvZjrzsy3wTfdRQ/njLrdWl4dL/g9j2xyiDH13EyxtAvOVQ96kh
	 grKmaczhJJlRHr9v5giE5xNrmvZQ/xfDckPGzO6qYIyU6jOkDP442OLun9fNc2rGa1
	 VWatdIhKttYd2sn2qegTf1dyTRSfz4c7FBNZTAFV2czUcxRgl9czI+BdztlbjN50E9
	 d7Cp8jGXL7Dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6EE8782D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012623359.8707.11029207709647461172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfaad764b1b0333e97a6f0693c3599788373aa8f080ff7a2a13d913c3460ce7
Date: Tue, 03 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770126233
