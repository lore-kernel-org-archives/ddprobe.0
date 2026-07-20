Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F123B1EFC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784578114; cv=none; b=isHADeREM7zVN0I8NbO5VvITmC4MIn6UiudDrHyG8oErMn5thRWXuF5wC2Rt6Kv7S0Wf3nX411FlKlZ9ZKhEz5JHEecsuCwjr9c8+MN6KaE7fEHVCbP+FcgyhV3aHCXYr4+gpxabI84TmDjcEygGnysTXSty0bG/u5vORJd+w3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784578114; c=relaxed/simple;
	bh=F9r5ziFM+0ttw06Au121NMGhZuM5IvhZ7tp+RTWrBOk=;
	h=To:Subject:From:Message-Id:Date; b=XFPZO+Uo5lxX7dyzBTE7znYFjI5TcuePvpr5jFaHzdYQYSCaJn4wXwyE/jlc0IaYHYoo1HhlS6y53aYyPXf0IEC2UZi1Sjnff+4z31uxzgXlg1JZW1rIm0hE5z9NKeyCYlOaMqAFBb6YXHb6noR+xupHQY63ri8LFjVc1h+vHuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI2QU5An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI2QU5An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7536C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784578113;
	bh=F9r5ziFM+0ttw06Au121NMGhZuM5IvhZ7tp+RTWrBOk=;
	h=To:Subject:From:Date:From;
	b=nI2QU5An0RjgeD7siQgbyox2pkbtm89M6f7zXUW2KZesv9x8niZvYUFTypSc51kAR
	 k9mglVYLKFy9k8ucmjeUHxlDij+2Tg6Emo0z0bQU6uh4jUOD9fR/fykERznnU8LxqD
	 DXyktuMNVdWdV7Xj1awun7S3TYmmxds1+xaU/QI1TGMiz/USAFizkiImOa2qjquxlF
	 I5GVcWhfPNMIjV766MBEaFnRWSHJjeAbj4sMGE7U+RY8ENpnOsuahXe8xj24hubp9y
	 4lnPWB4iWIyN4DsrPAsw7QE5PcWZ165K68tFApFFgfGBvGBiBUPR3KZkhpq+5bpS96
	 7gXXzDpaYmr7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14B6C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457811371.6863.18343572025879048604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c180d334e6b7520643eca93064d253ac15ae8b01a5f85cc5cce7120c0e633e73
Date: Mon, 20 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784578113
