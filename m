Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C9B658
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729794354; cv=none; b=HfdYd3qdC5HYtV5kNoWjmF6TSR8c9DWovqnEMFkmVryaXi5vSnb8qeJHBx5s5r9TCDOjPRfUwExC8zvicn5g5sDtGRXqUNTgw2/XEPVQwLzcgIYITUpiES39xZQ6FGfO93MjZVnQ4gBvI311TXWggNt0t+mvZbgn1QUDcjU9JSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729794354; c=relaxed/simple;
	bh=SVA3uTfStwrRRgsjyEBsYgWrvRitlloBmCFWj4RIIXY=;
	h=To:Subject:From:Message-Id:Date; b=eSdCMA+GMKeM8mVa4pVw2IpOoeWZs274uSfBL5HKE9CTWGvnFiRi4gVA8yk9JYPqVBqAktyoL7SIJI1fAWTwb4HWCPHpf6uIj4WA9FGJR0SagpUzbCgoif2Z7WeltUb9yOiQlOr1G+SXkuq42xesFFSSQf7z6UN4VLSvbO/70JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiDBBLYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiDBBLYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B6FC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729794353;
	bh=SVA3uTfStwrRRgsjyEBsYgWrvRitlloBmCFWj4RIIXY=;
	h=To:Subject:From:Date:From;
	b=eiDBBLYAihLN4i69ZzVSZfbG3zQDdz967rGDRGjdgZ1ifj0Di4heyImbmMD0Ekuul
	 E+F6ycK5iknW+JUVQmmc1VeZ1hPO92GK69vBtkgVi5WmPa+zHJ36GNma0TOl4v97b4
	 zwC0dluNdUKTYhLCMFvArf7Og0aKrYzJlJsSaGU6kiq8Kc+arTsH9XDfVd/dtbJJ+o
	 nLb0em9Ldw/aLgW1+C78PR5Gp5oq8d049mOIhJTWVwRr5PgeS7EEMfJqtW5iXIBw1D
	 TcUeU9HkKYNCNMVHnSblhO5P54mEhwF83ez7Wxiq9eZp3ou0Eia2fpZRW5B2tZdY6y
	 NKqUW9Wg1RBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6864CE8E9A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172979435363.4631.232654774096285007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b458491b4b6b39c57e3b4ebedae1c42814db4138c08268f531ad17505cf718a1
Date: Thu, 24 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729794353
