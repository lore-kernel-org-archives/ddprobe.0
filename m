Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74E41DE4EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772690093; cv=none; b=q09UhoBJXAqihTZ7vfr5fA6RvDN6M39j7tKTUUkmcfOG6NVpCbiqVzdxFv4gMkWk0VofzghFeITcSAJBdCAnfmWEruCJ29qgZTb81cjkdeURcpr/6K6UOfcgz3zhurx4rdlNILVVjUWamAwv3wBa2ld9HFwc0CIVFES5Joi0Yq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772690093; c=relaxed/simple;
	bh=Xz1kRifuqA+iFtnEAi0rCc9lQshcjBbJIIZpl67Ao38=;
	h=To:Subject:From:Message-Id:Date; b=MjaSgeC0wHgQ8lK+WOXj0cam/R4vjak1lbeQyc9H14Ng3y72lIpZ6FXKNV+6VrpdoqoUKUUk16VCo2fgIziJrrlM73dNOPdGVa718ghIbAg0lYm8SPrOYcdV+IKJXNzqcTjYT1Dwk5jV6ymm01MQderdfacJ+WEK2jwBPAK+uKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXbyfTtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXbyfTtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D25C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772690093;
	bh=Xz1kRifuqA+iFtnEAi0rCc9lQshcjBbJIIZpl67Ao38=;
	h=To:Subject:From:Date:From;
	b=XXbyfTtfGKhQXyNDFDdkPHJtm6wucsxDGxC7h/gqC6YwutUC7JZ0lYhMefjbvcu7a
	 LpOb9LI6rVSl8mVOH0sCtLY0o7zzn9BdBMelqxnJxNgFtyBVqAzgU6GL4B1EBS6K2l
	 crthaR0N/7aX0Eg5ZWUVeasymBtBE7pMIZ5fl/lPs7soheLAcetqweqgtWPgQTKDq6
	 /MRUX+xT/eZsek1Z0GUS8aIX6L6h+Mgz1/4g6nQoUECEftF146CnRWYCWq9Vn/GYOq
	 b2pVcoNZTxBXErJ+g3HwyUbr01LNqX6M+9Sl7L3jYU1vXZjM7GRfPCae48YLCscKgT
	 2OVTq5GYRthcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95903EEF308
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269009359.4035.6910382497783579303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5a1a81cb160cbdb62342bc9607e2bb4b027eaf2fde875e80107b4955fa1914
Date: Thu, 05 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772690093
