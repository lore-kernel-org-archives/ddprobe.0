Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE0921B9D9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751024394; cv=none; b=IyL5pzyLmVPeOa3hoV00dQu29GWfBS19TQP0/Y23/FE51Khne/6vK7IXS47mOrJLKtDiOP31SWhsnUxHXB0+/wEP1vaPMy7k83xa6ntf4dO9a5LjQ9PN8PG9K3Bri8Kebu4S0CujoL5B6Hpan0c8T5o+5yd/6tJdaixYM1nhyQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751024394; c=relaxed/simple;
	bh=GJZdcDXlrHONPGRLx+fSeiAabYWdmy6iWYASuUerHC0=;
	h=To:Subject:From:Message-Id:Date; b=jMxFyvE6sJr++sIyM6tDVx99Fz0i+DE2XKsfbp4sAYyej+/u+5ep60oCssYOy670VAae30vXKrwBIlyQdxriInDcCsj1Jf9wWdRMen/5v+Fnc0XGUoysnXGVMZaB6zWh5ewVGu9VvfoF+MJK52G/zsoQ3VUnR78khBi5CApRk4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmVF9O6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmVF9O6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C59C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751024393;
	bh=GJZdcDXlrHONPGRLx+fSeiAabYWdmy6iWYASuUerHC0=;
	h=To:Subject:From:Date:From;
	b=fmVF9O6Jo8wbFDzNKopF3hILlfYOvsoZjpu3ODr/fVx1RVNGfqF/CcsdhwlzBkSMw
	 mv8QLvqCVN1QVG4I97VtxOCU1feWuedldyBEYWvYQKTbl4taiEjCf4FshewazmY+fs
	 S9znCl1VQV426CPSf26F70dkXL9eUKI8MwVFGclrzL6RwmlWseeXNGYJIY8Bt0MFJK
	 pWyA/oaHfk/ZJNPUYFS3oJ/BcxkSkOOjoQEcXL/ViWxP/sTmn+cGNRhDu1E/I3wZQa
	 daRE1e6mLlDayaH6Ut6sSzKdoFGzUsmRr0gSVbapIKlrdTsDAm2BHTELjJreE1BC6V
	 o/L3qZc12LxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481FC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102439358.6679.9654822679717981521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a77d5b839ff1948b65e670ca55d1a87a0eec4d4abd4d802f037e305675f0bd
Date: Fri, 27 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751024393
