Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F1A12EBE1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709837297; cv=none; b=hUCrqOglJK4jq3+OS2ZtBYW50YPVvnuBIFuZwzyk94f5qLAf98K2W3FNAW5lIDAs5qQ6QBu0ObmhtSrkffUnYyjttT3toHxcraWwO61KoRnWTbUdBi2FCymWXx3Xmsaiwmy+FqyU5zOVIKhmbwkQptVTAUUOhpEM8g2HBcv3rpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709837297; c=relaxed/simple;
	bh=ExVC29c1i5dTyLaFh1/fnRi4qfvBA1etbl38s9ITzk0=;
	h=To:Subject:From:Message-Id:Date; b=ihSPjlrMUkUgNiLrwktEWc99PqA5KmSViquXgawJd33ELn9a9jXBzP6oIN4tj7V/jcT2xT4CjXmGsMTHb13NbpjGoUhiJQNKyoMDiEsbZP+MPfxg0jtgci42dYJSPD/Z+4PJPEN5PQhrgRmCzGwiX8T31tsfeGYYQ07wJX8Vl8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Azz5Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Azz5Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863D2C43390
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709837296;
	bh=ExVC29c1i5dTyLaFh1/fnRi4qfvBA1etbl38s9ITzk0=;
	h=To:Subject:From:Date:From;
	b=k7Azz5FbGeGbaAJhUsViWt7d5xgli4y4dmjPHgg9UypoZR/2WqdJU6iDgYItawHFd
	 EJvdn95mWfKeOkjyJsXDunHj6QtX06Cyy20TV4cHoAiji3PuW5aruiPHdAyJDTZPXC
	 iL1jHMAFAWw/FXj66ktfoCCT6rsWyKNkFcaZCcdLNR0hHoYI6k3BDHGrltV/xeE2Sr
	 CJ4AysYn0ET0YfevVznuGdc8ytc9MiHK1SI02ycWmxgw2SOEU2owR5IFcm9Cl7ORtm
	 bdqXHBuaurTIuJtt3X/MFv3kBsTS1/eo3+PUUFu1NxM1EkKavh+htdy2zmVm3Y409J
	 0o0/ScML+zqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDFBC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170983729637.26646.10377787707982819593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40a5643a119f4912326ef55247e74d5b30d1102624ffb5763f54dfc69dd8606
Date: Thu, 07 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709837296
