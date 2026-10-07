Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7257F413230
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791377434; cv=none; b=eMmSzU08fVhhLhlIPgrAejKLGMcPJ6u6miImD7fmdtSAvSuw97/ZCHp+g1LME97xgCOkXsM1r0TFfBpAVTdhYs4XA7FHdhX7IK+nLCpFsZ7+6DdOWdjt71J0GDCpKvOVmay73QGruefeDlxD8JdIOYxdB3VaeJPXR7neaNqyQ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791377434; c=relaxed/simple;
	bh=aR3jyK2x/t5VS358WgfVL4M91OsK/37XAKYWkPsykpE=;
	h=To:Subject:From:Message-Id:Date; b=Myj8+2gOlAs108fECuSV1z1wysRAC/qMgozXuTfUZM2vZyJPu1hsx+a8M2I8mLKf93N/bXC1AMi8A65ncftTdELKNKrQiEvOFvvAsDiCJ1JFaW3mnptqzQX4Xl9kRnif7efRoWyGjknCbKmCpIHcGWuyflAgzb2qUJsCyhZ0bgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWcXLIID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWcXLIID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791377433;
	bh=aR3jyK2x/t5VS358WgfVL4M91OsK/37XAKYWkPsykpE=;
	h=To:Subject:From:Date:From;
	b=OWcXLIIDUzalWizJk//f6fWSSZMkvDlYG07jyeNd/1BWdFbvg4Ko1gWm7qtNfwGdE
	 7jRNAqzMa8mImFjlYaf+wMD89u2WP+XjWgu/Diz0xUR5auApXLeL7SyrLPH+ryREXX
	 VWGPRSWLtrDnm5gOzgOXHRzg0hSWsq/fH6LsVsRGht9KT8e1PbS0hgUh6jsu4rIi6g
	 5kpGMHYLhO+JKS8RdVss7MaK4K33WiAix4jHKH4uHQLSEJ12f1ClgKfiDi7Kb7tRoc
	 +pI2M6cGiOY/ISpoWAS+txwNRGF7MUW4utwwvIJNr/PNVcREEKFsxScqHPVCcIU2Pt
	 Tb+QIOFkooJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD00BCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137743369.3663.14458126749467872234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f1c44b606f88e9a5281a5150205b1e9ebfa771c000d487eb621655496ca3d7
Date: Wed, 07 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791377433
