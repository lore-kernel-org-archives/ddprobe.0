Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8BD272E7B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759400994; cv=none; b=sSYVl4EAmrHzn2Nqr9IMZKnQ6xa+1cvIDvhyqZ2KzNTDnicDcanx8QA1WiWM4xksZ2SKFdmWG7XBnHVa55L+st+2HK0JAhgdW6MVN3WBBKHQU9KtLTbcn/EJTAU8lZYh/SM1i3a0123abPwUBytztszeS8CuBDLb5BZutG9+r9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759400994; c=relaxed/simple;
	bh=SIcqNwcF+krP5cBVMxrxK9ASD2aZb59hHZXLjbmw2T8=;
	h=To:Subject:From:Message-Id:Date; b=Jw5811kQmDqAgGhiXlKQHEK9dMJ5HDtiWlk7CbONmX6IdRbBez2f7OHfh62i0UhJyh0d9nAQtGnGXIdyt7V73PKFwUTCKI0O+jzpHhDgIxlo3U0EBEwMHsEtKi4rbB0R+OmJnxzYNkkQO3ObHxTveqt+CLR7gW8+ke6l3DO5QmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnuCQ+c6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnuCQ+c6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA3AC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759400993;
	bh=SIcqNwcF+krP5cBVMxrxK9ASD2aZb59hHZXLjbmw2T8=;
	h=To:Subject:From:Date:From;
	b=lnuCQ+c6/hkcVfskoUOVLYYMGVCr/W/PePf90q96toZ31BEtABLaLUd3DNNNWauPf
	 Yidmta57ntaIQa7/7i3DkigQirsc+buKothqGtIWen7g68KAQ7WjLYbNV4uyFcsKx4
	 e+wT/IjX/LV/906/bTo7C3nL75nzvLFltXeZ1Xxz7+alpahFt6L3V5RoVT0fR8NPY2
	 a9XfNF47d2X7wnJjnJY2dZyiUboLa7pDpsIVhtLvzk2lrmlPvGNIRimLF79Q0rS2Fv
	 tQd8L1Xkq4OokX86hIGZPdTmIExjyER9oBOqKPQ1UG/L38rYdev95Eu85EfBDGrcr/
	 7WBGZz2fPVL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940099359.15005.5161712379041177922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620f06368999e2bfc0e6051e1e481589bdc6e0a8896ac0fd118842d385ba0d2d
Date: Thu, 02 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759400993
