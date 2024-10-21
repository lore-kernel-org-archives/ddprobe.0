Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2D31E47D9
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729505154; cv=none; b=JvwpMVVu8zc7lNWyjx2N0GtXY7HQe96zOc3UjJ63eZYsQnl/aWkcVmZDxo04QL5+v+oc1pUiQ5gNu3Hbi7Mhkw+MYnczlQ+Ng2Al7h8nHU6kfG+sbLuxklXDB05HHpy9bj08CjoNQhwGhwyCX10qZPEoXPOMW5bSbPIF+wMutrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729505154; c=relaxed/simple;
	bh=OYLGHiY3OLv91wLjPS7kM8lh7DRknRFIdAx35FYuoHE=;
	h=To:Subject:From:Message-Id:Date; b=VF1uZ3JhtaP2NgCRWDlI2oTfuEN18poNQRDvK195zQFgtGKV5/X6jjeu0of/YTYuR4hvrlUPOVxTP1Btn9R7xwpdK88a4hoSi2mH6SV9wmG05lk5/jSG+jXBlxG8ihRBFtlnWW9wD7a3i0aSCjaFc9rlbVMgCrUgafiCZW5HaO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgSlrK2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgSlrK2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF7C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729505153;
	bh=OYLGHiY3OLv91wLjPS7kM8lh7DRknRFIdAx35FYuoHE=;
	h=To:Subject:From:Date:From;
	b=WgSlrK2d34P1LOAGixpDX0sCg0+2WHRGYo3HxARPppurg+9eqdLfTa279e+i5crA9
	 7CW1i4vm77gYm/AFXA08jcKwbvyKq8q8inGD+UGoIzPa6S59VR5nk/c0utAo8j6wm+
	 CyTL1v027l5eo6ScIxbH7rwJ7iVn6uKvs0UQj12rdyYBL/nis6ivxpTDoHF5vU+3fe
	 vNMCaH7IOmWsT3ihcjAmlKMbLRd6A5HwwZnRT+PYP/tJj1KLGdAQg+inoTa0aXfdyQ
	 0XOL4L6LNDRHQLCgEIMU6LwC5LBPkquBTfgli5rwJGSmfTixFDerHorILW/KnALOnp
	 PImtQDoQJCLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9CD0E6DB
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172950515359.30617.1021157909163713236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171d6368d5979d6f565bf7c167e9c74f020c08b800815d716e40224f9480ccfe
Date: Mon, 21 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729505153
