Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BDC611E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761473394; cv=none; b=q32KXutsjVXefsvebZp/KSL/mky91bAsTcTmqPjmhsCbE1RmgJAiwdm3C3OGAlSIof2Nt49M/qxWLYdJ1HsOkKuy5jkVgMEi6eC5R/p9Eoo1Mx70tuRLrvq4C5FhG7ikuZOoDaNl0yAg3D0n6JluSK//Kqn0+BkP5hc3rIHJeE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761473394; c=relaxed/simple;
	bh=nacggDDYt25ECXHtvwXsNgxDlYBqBJFsRUxYFXtRxeo=;
	h=To:Subject:From:Message-Id:Date; b=uytGPezhSwqGO/WX2s9hqH7CeRD67esmDl1aT5NzeKJyToXdmzZDTpZ+Z5v6SKGVfLQsc89pizDKh9d85kLrUN4PxbXwYK7cBOIBeXWqENl9PSlPgfsnNzuXFodTkVBpMdYi0J6PYI9vmuizwroDC0nb/2C1oH24SAFSuFfQ3UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klwa5/XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klwa5/XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A548AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761473393;
	bh=nacggDDYt25ECXHtvwXsNgxDlYBqBJFsRUxYFXtRxeo=;
	h=To:Subject:From:Date:From;
	b=klwa5/XV6348ncUyybNwskSQdrNEKYsvD2ICFLZf/EQ9VmVmA3p+fgc4ebzKoUvKk
	 cU2mcwYbeOIVaJknwuP0ujwNbsUH5m/jKTdPuynSSjq9/wkOy4MZkU2WgvRi2XVRaM
	 rnXd6HMt6GGmJXJjmyfmEK8+IBDfC0V/EjmImiloxJGBLscSLePjpKThyLNzAC3DZ8
	 NgFJwj0Ib8swgk029BBq4OvOFowHidqZbJt7UUMaUDs+1LdF75Q1raLUmjIfj5lYBY
	 hk1oem1TRpL52S2sQUfHWwfgN+RxXKBBTT8MidmUoiliPZV9bgzMzVqpWfdDTZxieg
	 p+2+M8D2yTcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96363CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147339358.25970.7015354355631833038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad4429b7a98361253a6aefef3cd87855a919b8c33628decab7fcb4966f2f507
Date: Sun, 26 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761473393
