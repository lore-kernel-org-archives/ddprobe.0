Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B652E36F1
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753750794; cv=none; b=KiNReD+ctp0pc4lDQst0QJczvyrD8WZoVKegYMKQyDt2k/XFwbj7Y+eIKzg0bFc8IBjcmvm10e8XFAt6bN5Xk023uJCd/VJNPRcqnw1DLsFuWV16h0bB5xUxdXwrfnlpwk3dFzLU9XuhKIau24etEC01KOnOJXDEg6Dh9Umpmzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753750794; c=relaxed/simple;
	bh=ODCucnveTXWS3tIji8vCuTXpQCujY6Ui3fnB7765L1g=;
	h=To:Subject:From:Message-Id:Date; b=QYPj84FcVVIxSR2ao4gd+VPE/eAu/qzFEMYtk/gTOyaI9iWi+8MTBsbd1Q4ilgPWQFPI0G1VQEh7yMAt2tXWn2BC3/i5Vt89eAwQ1fI8WwkW5mlj1ghSBpcNuRKRHzKhZs6eIa20y1CKuWLf9jSqSZ7ncXa5Efvg+kCcvb3WHXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIBHm3B3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIBHm3B3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1182C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753750793;
	bh=ODCucnveTXWS3tIji8vCuTXpQCujY6Ui3fnB7765L1g=;
	h=To:Subject:From:Date:From;
	b=UIBHm3B3JhhfN1dawMVIB4vmfkuA6JtjQivPVteBtOMljYNsid/verA60zPoKHKfo
	 VlWR34/jDM1AwXRp4Xy6qrEBQlhXV5uDx8XEAvGQQDWnnDg6+SUZ0maSuR1KNb1/lC
	 QU+lfMF5eJK36BcjJao8ox09EQG+PDT8UkwC1EuAc8aWGMwTu9I/I3qIbNUWdjcuJ6
	 3Qa0Mpz+ebNFKy4XYQD5HnCt7+Wk414xEkYcBHWaliTbL6vcn/fXZi8+vb3uvf8SaK
	 QJJPlp3DGRn0/0PgNT889MVMB7cQSiJ4yJLpCkT9wFm/tNHoAF3CcvGcaf8OWeu8YL
	 Aa9ZdZNbfpPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAFC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375079357.31512.9259792220361657096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd61e3da00f5454a6a8d8bb7a51cfd0cdb72854ed05c4f84128f729cfacb7077
Date: Tue, 29 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753750793
