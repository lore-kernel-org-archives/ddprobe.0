Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0D838DC7
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716043343; cv=none; b=kOmenJDcaEDuWkBxQsgTkjipxrOqVRYV5Imyk5r+HcONYI24grPa5hu7GwXTCEldeATD9N/wPSTp9xvcz/A6jeH3v35fLBEnvXbQID/lcWBTmgC9eRMjJPDQ8pkka1tc0PD8WBp0rVYY59tosk79OfEGUibgw1n/vPXGTOv/s7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716043343; c=relaxed/simple;
	bh=2YrEBXoMPv9rCvqXXhRkQiO7NxJqTldnQcbPx7Ix48E=;
	h=To:Subject:From:Message-Id:Date; b=kQu5LQIgbTtTNXU0pxTDbucK0FXKwxPFwYQ36a9fS0Vn0hF45/EQatzW7uMY9VBoOCR84ZYG9rBhhxCO5D/9rtAUew9Po30z5SPREKnUpFwNt1eUtMMieUTBIxn71MMlPvspvJ2jbMozRsQKwzMYOYJKV/7yF7c/692d6iyhoqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm3NJBmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm3NJBmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B8FC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716043342;
	bh=2YrEBXoMPv9rCvqXXhRkQiO7NxJqTldnQcbPx7Ix48E=;
	h=To:Subject:From:Date:From;
	b=Lm3NJBmoVPMbuLzmxmB+hsdUOz/K3phtXsF0+Iw5AT/HtMctY6rOWlByyYUbe3Pn+
	 IFZ/gKPvbM2uaBNpMO6npR6I8kOoN5oS3h7bCR/PGaKC1owBNJ0qW+LmlgbsNFnDxA
	 ElU7BsBVKtyj/x+a85Ix3y2QCVfEwYxvpEHYSy9bhS+QNB3XGz+BukpTmS8AbXd94A
	 z2jX9NhHx8JZ/uatWAlmf8ES9Ulq7DnN3iuOSJ2igHQqlL/cPXh5GWfiNoOAHkNJr1
	 Y725ofR7LWIxbe1imVTw5ZtF9oFpw71zMZaSf4CnbdKi4wOYvjb+Oa/R8R2G8C2HPq
	 ESBftesxLtqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB2C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604334277.30090.434491222487011565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9eff0376cbb174dc779c182e6b8b6e679873176c198676f69a7fee795921a95
Date: Sat, 18 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716043342
