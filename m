Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6765E2F5E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742446794; cv=none; b=bIMviVZDkK/a6mtCUbFRznUFTSoxQzm3tyqIPGQadoLIrvzsLFBX7dsIAQ0I35BcO3zYB3xerZ2+uy9sv53e+ghdoWvUbMq/w6xhlSJh3RJEopFvBnfpy8qJCWmFcSdAOUzp059Ydct6N7XqvNxzUU2Rn1E8yl/M2ZsX1abT7Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742446794; c=relaxed/simple;
	bh=Sf4m8IwtQYWXO+/CuljbA8PO182dafFmoyB6W/JNDDA=;
	h=To:Subject:From:Message-Id:Date; b=p31cR4vfhSLgNNQgCJCEp16x6RzCu5fgi5ounht7pW24ocg+w//wgUTrLngdtfCMOqw3x6yGery0uMyNwKpBqwteOxC78tzXrQTZDL1Qn8UyeqiHuTaKoVhH0ZXI4pX+YJfXT4p3BenUpHT9VTALMXvQbzKjjFqKJZtqltZybbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AW5zZ1Qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AW5zZ1Qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE566C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742446793;
	bh=Sf4m8IwtQYWXO+/CuljbA8PO182dafFmoyB6W/JNDDA=;
	h=To:Subject:From:Date:From;
	b=AW5zZ1Qte96ey2DvFPDiyZ9DE+e3HaS+s6zt/WqZyXvI6+1BYolpRhgguHkn1SG0X
	 n+KMS/cYuvtXBSVY452Eorx0vdovnYQZOyQWWBxB8m/7RPKhMIj1AAjkIVqMEtEaUN
	 fey9y+mvViYFsol0slVIinWNKWjO0NZ40OYcxcr4qh9AFDGYRowLaCjO3OBBXeDBBD
	 FG3qqH6VIsadc2IXYdnso9BIHtx+VK+ZsfmgPV22puqz2Kusxmg2WimmJibj0yEIWj
	 ahpAmFTxRsfyxPxjNZ6H1O40r43MN17EhvyonPmaM28q4Z7OoyKSG93sm8WRPsCEti
	 G0GN7Q339brdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62A5C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244679361.9941.16279197413367258971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931b48ed3eb2a808be5f41abbb302a9edb95b1ec28f766b9ee31b520cd0ad87f
Date: Thu, 20 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742446793
