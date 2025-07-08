Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C82F2DE70F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751980194; cv=none; b=IaRDjnKojNQxQzq2q0HoVNFL6o/0M9EPMr5bIvJebEhSnQpHI99UaSLwjlWq4+3hg1pmMhMnhEhzseQnMR0SDUUE/tO32yuf3OW33ziyFY89m4pkgllE7xtohxRNMzZ35L/5VxvBEG9ebaI9TCwONfLCdhGHq0QPKapt1goVIiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751980194; c=relaxed/simple;
	bh=wL8uQTFyZdheeFAV7HX0XUzWhYZQP0/MRYJztRS/lNE=;
	h=To:Subject:From:Message-Id:Date; b=bL77SfmxsAT+bLN49EmA2ib7YA+yCP3MvBpec1WVrutgjvVcJhw9Mycy0e4dMxC1d8xgRUSEe9fL4ONO8Bg6bDzpxMJ377vY3kdJlGhWZyU19bFBwp12qr3itWwpVlFWjILGUWeFtT+Cz6PVozt0eP9ndRlCq7QI0KUuwJJE3Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8GlBxFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8GlBxFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDCBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751980193;
	bh=wL8uQTFyZdheeFAV7HX0XUzWhYZQP0/MRYJztRS/lNE=;
	h=To:Subject:From:Date:From;
	b=e8GlBxFlsxOaRYS5d/GLekJEt3qxKuPBYMzxC1tVmFF0f5lprB50xR4tGiEDVjzKh
	 hkpYyN5CyVp9TJBIYRG376DJy7LKPyAFnbJC35RERppdvI9pUvJQN+Anuaswb88nK6
	 cyXfwg5MspmnYx7ApWqBJ4jw+mIlhmBD5xqKEUiWWB20czTV2D+npo6pbsvJcFyVc6
	 sexuBcgeYF9gF21Z0mqDp7BEH2ArK1UZU0mQpXXO1oc75i2Nm/Lw6Dm8OZqtFS6g32
	 MMZiYsL1jgv3oDzvDujbz7J5zl/js3I6+Yas/AQVye9a24FreD2rYLTNKmXClw4gmN
	 tPGrM3IdNHLyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A1C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198019357.15332.17790236182599152428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81cd2b8ebc4052b390dc24f80014dbb52908dddd478018e6a06cd48e165b553
Date: Tue, 08 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751980193
