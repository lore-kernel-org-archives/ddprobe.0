Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B43644C9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784384314; cv=none; b=M19/63DR+OnTZMt5jtTywS8oElwpN517bEyyn0prQtRRuOWL31gdgAHU7ClOrcQwvkEpaNkYQBp7aQmHoYmSDFd+Gj5WSxTUSitxO0RBC3ZaclFwvc275BDlMkbVWCIvvozGjVrfsSZuds98jSSq0cJ1mo15az8d0yMi9IZygMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784384314; c=relaxed/simple;
	bh=04q+Qms8FeCmVMQ9+Gb5XLuU2e75ZIhBo1wKawyer38=;
	h=To:Subject:From:Message-Id:Date; b=ez/7d8dG4T4KzH8jY/anJJKEPETwn4CqZtxtgloaOM/3i/LyvX5Z+L7B//KioTfv3n5rIfdFLtjgn6adFnMP1tihYQrLGWnSVhw5BZhetig8QOm52l1UAjXvnwyYXa1NXSZ8TU5zl//rz6xTgt87SvQoR76WRWj7jJvEcplnNlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab7l32ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab7l32ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB82C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784384313;
	bh=04q+Qms8FeCmVMQ9+Gb5XLuU2e75ZIhBo1wKawyer38=;
	h=To:Subject:From:Date:From;
	b=ab7l32exDALFXjz9gs7ielvPjgKY1R8gzUmXihOa/FWv0wdYwFweFYa/iz+wyLHdS
	 vSxKNtbQWOYaTBKYSuvdn3hKumcboR8pSQZ54Ri+wquqKHt2EDxxxQidnpna7TqLa0
	 cUab6Vm2rh26+lopnoMmdHEWp+C0Q3mjYFfLJ4V+0A3buDaT+soiuPP7LULUwrvbFe
	 YfkRydL7uEgp3EuIKa4xPPu+mx+1vlSCWzmQWNg9vrBDtXfAicYKlPgk2vH64Vni91
	 kmZQX236N8XwaeeZjmPgVVtU/trOQj7TtkifutlVgCdCUtThPNGggu0nz5EycJDuDy
	 z4M/aH0i9hH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B793CC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438431374.9504.18037027132618341388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae804aa8111c46cbce2d72389f41ba23b1126e7e6e56e5cce15f59ce72d17ff
Date: Sat, 18 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784384313
