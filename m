Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218B11DFE20
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750493994; cv=none; b=h6hIW4gTH94qqRDH91Co2ukcVoNuYr3mprwC4lZOZ13yQGvCv++o+4O74hQLTZEmrKSjEoOWH1jCfoOtGnJe3VLwKOWfwKgJJHU6AFEwuNO0FDZbv1/mGYWP33bPpIG/Mp+3vTR2xBCuihktHD17BhA+f1sSBWDA8QGuwNDdF5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750493994; c=relaxed/simple;
	bh=7xoCGrGnteA0ds7rZ+4vm47G8YdJgt74GTUoM68jnFM=;
	h=To:Subject:From:Message-Id:Date; b=rcx/bub/+7Quhb2ieHnS2YBvdHz8TQX2ilhqEMY/UE7UJWxrhEuGBE67UB4dLy1DMEwmq4tY4f8HbEDx+VSRyrSfx2DM0DwBiD3IT2CspLV5jIsCIDufVifUNT4IQV7ti9iHarlVYtNsGd74LX93f0dsZ5psPRK9bJbL/aXE8D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa/PPfXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa/PPfXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1199C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750493993;
	bh=7xoCGrGnteA0ds7rZ+4vm47G8YdJgt74GTUoM68jnFM=;
	h=To:Subject:From:Date:From;
	b=aa/PPfXkdz9klcTqT+DAlmawfzv02JcpkR9zsH1EYBHhOX6w7/AG810FU0xqLOpwr
	 FNGyeLXZYO03lilBHzeoWGumdwrkz159aAlkOcmN+3qNf3hI1bbFK9ju6FMhAsghV4
	 s3fjwoKg9d85itL06tBvLWukcoL+40rv+hovObqULlHgDPvXyK1HT8+ILFe8c6gTGB
	 C0HFJhbDtqYeeVOGg29dd/lhlKNYCc0J+5Q1ubzrit2CoYfHOlz+8emKLCeaSln/AX
	 K4mTN0wzAgEwdzAQNgH2cEIYlmFgsUD8mHJ40TJblVJfANz8HYzr+SiNls9hCpf2oG
	 iooMkLS+LQADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B90C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049399357.18286.2735210454846067101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264d3f963990118d93e699e1e1b00f24fecb38dbe5279c62f8d64bb45e046c85
Date: Sat, 21 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750493993
