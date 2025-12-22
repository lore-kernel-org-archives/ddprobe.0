Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248DC2F3C37
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766414034; cv=none; b=QEAhRA751++h3Llac5vGyBl+IT28pGhAXtTJaitmi7gl8JnxUjan8DW3dB9gR59CF/CtZbWan5ZntZgL3jMYu1pKwCJ3TU2VcHc1pRtiyR/S+GTCi4XHkkFoK3bZmpGqznvl9fRkdNRc671pzNLbV8yBpm/03ohfux19JResCNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766414034; c=relaxed/simple;
	bh=bjzA9MWO49qUnsYOUGVVocAzgtSs3JFZFfwgqloVeiQ=;
	h=To:Subject:From:Message-Id:Date; b=Ku7KVzIkKMvs8Trnz2wSlhTNphG1tdyTCXzRVtY6pWrwsfge7+09G+BkpFvuj7t3qYBMWKeq/PQQlEFW8IXzy7QfXjO4H5lKyAdE5kpzBz22JkRvEmYj1EXXlv/Lq7ULRDLj0VfNMgluV6ZspRBvag4ufM2vS19hgS73bykKdBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LenkfUYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LenkfUYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766414033;
	bh=bjzA9MWO49qUnsYOUGVVocAzgtSs3JFZFfwgqloVeiQ=;
	h=To:Subject:From:Date:From;
	b=LenkfUYqBsBUk7Ki6vQaSt/K9b8g7RSDNmB4brDrNPwH9jWiXVuOBBQCvWY8Q5jDc
	 p5Ip+37y4EfTmGc/6Ddp4kW5pgMXtkMKcMVllP6a8Knuq0PGEtyDluf76ldtwdlEjJ
	 Nt/euKrL53VUKrlMihk0rfBmyYsBvMkZwpfcY4ZuBOk/Z6OaRhBbb1SifhwndsfsKw
	 +py9eyIFhbr4cO9wTYcBJCOAXJkqUMpUWasUBMv+JhrdhcGbfDQ65Vd7OlGwKP4wF5
	 +7zIVutYejbnAyiQnLO4ZC1j4+0xaYCyQ2Z89GiHZKKzZEq/G0VXuo7uZjI0SUC4zh
	 Hrsl3fRLhvErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F354E674B5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641403357.8373.8618266957329383378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edc76a90bdd9137854ae219d5529d6a4fbbc1f1069a7dbd1a5e2f44036aac83
Date: Mon, 22 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766414033
