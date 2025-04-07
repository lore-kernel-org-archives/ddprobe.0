Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B43022FDF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744017594; cv=none; b=Hc9AFRvDFnvTLglZcvnmEqtLR6NH+14VNKZte/lwTa/HQa+sS8yAA0AdPDC0LNeJU7bixmRdtYu55qVcFE2PoDJsYM2lFUQu/W1AFREdo1eIzR1CuPDCt+2pk+gti5jCo3ioi8oKSanP9HGMs0La1Yv9mJqiFA6GKp57ZyZvG60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744017594; c=relaxed/simple;
	bh=yp2tgekJlFWEhuIrTbRd6nUlbFOj5FqpVzDYFr1yTnE=;
	h=To:Subject:From:Message-Id:Date; b=IvBJwtpvs/0Z/U1cxirefLOucRiSBEwCzC51UJjsxIsOYapyXrosj4F6ZV549FW/+KJ6kkE8afFp2RaXE6y1w7woVB2bqFReVhGZBS3rHa9FmDzlzP3+s8QUQcjoLSE5AtRZZN6L3zMMD1QgY3gkD/bfBCv8i6O+c8UtVeD3uYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okTI/LBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okTI/LBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744017593;
	bh=yp2tgekJlFWEhuIrTbRd6nUlbFOj5FqpVzDYFr1yTnE=;
	h=To:Subject:From:Date:From;
	b=okTI/LBTs9sB8owAJ2crzRUVkTzJipgXjgcblvyeRkcMHrGU9qWvrnEo3xe6ENXOY
	 67qFnIk9L/Gad/UYrtO3O2+B2FoA44DXI5X39pzVi6ZkgWvxaf9v9wPM4a5/KfyAPE
	 8SCNur3cRMixjj2ivI9RclonYEHyDC8a3/qwakqtWWaV7oPLYHqXfWP9W9Nqf+w2Gs
	 szebYgJN0xwTuepqPY1ihvMedSWCFaE2lXQQhqyNL1AGayXzXczgb7h/WIqsaWmRXz
	 smX/Uo9Z3rQHLtt62EQb3ZTdlqW3COJ6l/YkkFODYGsW0z4anWURjtVpuAsbNMg00k
	 L1+FNYL1zGYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F7C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401759358.14610.1370777147881269201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caa6eb01d69cb473c0b8b1cca8bfee087f851e5f106541aa0b7ccfe2909fd33
Date: Mon, 07 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744017593
