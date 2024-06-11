Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AE7B657
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718089703; cv=none; b=E3Ejv9rpHTals9Iv3X09yN6gfZTmqqOQ1DEng/hmLNCCdkiFDVINdMadJd4kiE0c+55WUHtK+fxwT58Wp/CbpQxdImzv9fSDtGLaW+w+oLSjQXFXv3/l1lpCjsTFSrdrQA8CTx7GcfQSI8XwNc30pmuujGTSEqFX98f5ODMCjs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718089703; c=relaxed/simple;
	bh=Y6a/H8NjBsHl1IYvA8i69tAA7bWuiUAQ2ydIvwDR9YU=;
	h=To:Subject:From:Message-Id:Date; b=jXdRJlTFs80Me1MGbFTiZNoHoDU+PPDPOJ3jm1984alGs5ghXHmUVbPMtyZ1UuSv9C9WuZqoePQVvOE0GnoLJugjmzvrSteXTIQSsY+hBaEQvptBAyBr5rd5HQ6wTqeOKPtVrsADIf3mmJDlTcTG8YXfuQlFjRu5t0nbYoJwYTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaT+Z3N7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaT+Z3N7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC17AC32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718089703;
	bh=Y6a/H8NjBsHl1IYvA8i69tAA7bWuiUAQ2ydIvwDR9YU=;
	h=To:Subject:From:Date:From;
	b=uaT+Z3N7vntrDYnQt7FweQyxewNXiHcwJ4Cq+Nd3qeOLEGX1gxw0dbwltnP4eGjgQ
	 0IwGheOIYUxOu+ZSqfUFDI/sJsaETYyWXwGU18xVybmFE3mKNMS+fahghca7opQgKT
	 qLxG8Ahrv+oKdGBTSEkGZK+yEo/1CH3k8POPFWP6Upp19Pb/GR1WLi62gSGBD/d830
	 nbHHDunlb2mCfWiIHGI1GKXdwDqFqSWpcYNBTykSPl8KMatFW2uoGgBpn9L8t18XGl
	 pgZL5EJj20NWZbb0UjXdjuT4brNTmBvEsm/NZHPU22Q5WtJ0Pm8dX1d+1AWJsFuyX6
	 /9PpedhOxAxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CACC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808970285.6964.5381178345160579140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901386b539571b9d9b4475b9c1d14ada0fa2a873fd77b123323f95bdfe49c2ac
Date: Tue, 11 Jun 2024 07:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718089702
