Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120673C1F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791669634; cv=none; b=ZshyS6AHE5L5tem6k02F5w31BXiA/LV5U89Ba9/lUKGAoK/WhFhdN8R3lmsOFyhIMhL7rq0TIva3sorODui2qmgLkQCC+BWOlRDiLeosyvg0l5WB+vqplAJzGGcbavfYCzGD520Sp++mh6HnOln8PNl1EYRdL/aJqVKo2HEG0BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791669634; c=relaxed/simple;
	bh=pi9IDrd1R756LvQrTMl22/1i+lk1oRbx7UcFm+zPDxI=;
	h=To:Subject:From:Message-Id:Date; b=A5iias+zB7e5fYBxLKPwNr/mbGplAi1+rICmfObc5N10USShVvAe1SGCxIWVq4RKthZF5txoBUlFYwovbnjxl38ZN8DS2nC5JZN99aGWlX2ZuNVIYiqSDBx7bsIFAjSD24PFKFF80MbFDFOLv6sqpU+21YwFakNiemX7Q/mgAFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5OrDdvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5OrDdvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D2EC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791669633;
	bh=pi9IDrd1R756LvQrTMl22/1i+lk1oRbx7UcFm+zPDxI=;
	h=To:Subject:From:Date:From;
	b=r5OrDdvvZ50uPx8XNi3hMn9qu6ymsL3JAktVDl5gHb1T2H+XMI+7S8fmzLsqPQSYp
	 qsAT/a3ez3h037F5lNiiWyWUc0q/as/aPpdvg73nSpWX4hv0v/1737OL4ubnMK4U1+
	 OSDbj/9hdZGiWg6GzSVi5THJXd/047JeeJADj+CcTiJWcY8ahNoKfbEmt4oMbooAkD
	 ikFi7BO6F81ZDRcqpcHFoSJUAodS3eBjJypIo/VdY8IGwlbudjJdaYKm1cLJP/7A8Y
	 nWAbNhaw8lrMRkF//RDYBQufKRW+EAl7P4r97yqQFT9p+rJ/PVCS+I5RaP/WtTcReo
	 EV13brAtVDetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1292CA9ECE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166963368.3367.14559914319233084970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583b73f8d8461b3b3f1376fec06f3a3cc4026b5d208ce973d7efe5f84ae16b41
Date: Sat, 10 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791669633
