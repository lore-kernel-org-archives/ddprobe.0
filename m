Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F967272E45
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761804594; cv=none; b=F6ahijYjlQ29ID4RjI40KH5sqvoHiQMvXiilC/oinkiquZQYb61fClVPxnsNodmuOiV4mfJSnHmI3fjwzdCPnxuRNbKVSsPeg5rWQ4tmAbumtS6ig6/2H18T8uc3POo5oFCIsvYrZ04G6qidLg+t/T+/1auqfTOFClS8cL/GO+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761804594; c=relaxed/simple;
	bh=a4RWNozOa4w1j0+Ba8yXtouBHXrIoRr2zIei5cOYxeU=;
	h=To:Subject:From:Message-Id:Date; b=hhiIBla0wKdbQsbVP4PlnsQTv7zXKxoc1IqNktJgqV1GvseiBLGtd5bU44W/LmAQYjvxrq/shqJHFrr+8qKmR1glih7GvkFSp+L0B9UXoKcmZiwQf0ZyrBIhomjc2W1mSTRVDRBHRUeYOVUET97C/VH0clN2I7TAus/Z0HJQ/v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9s8SQX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9s8SQX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3A8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761804593;
	bh=a4RWNozOa4w1j0+Ba8yXtouBHXrIoRr2zIei5cOYxeU=;
	h=To:Subject:From:Date:From;
	b=i9s8SQX8FuBhTCZv/nfue2haQaD3vfvRSi225a9d/EyfVdsqL9tZuqWev2xAlE/fN
	 C2BeomhHPejGtanDQPphQQE9Eelu7UOIr39DcCj19uzofeX1LcnGavC5674zr8R+OM
	 Df1F41rc8PuxAqMBJ5K8Jpmd/FoKqkKlzJZqGRJpsxd7yrUE4dZp1OeZMA7MLXBX2k
	 WoQOwaNXpjBYLbf4vj+vU1GB8SEo/ysvNouFVGjbWPGzx/mn2FKRceKyMPsuQvZ6VZ
	 +PIvircPXXieqxrYJ8dCNH/cGqNLxrVVxtROgHxFu82FWA7F2TJBoPbK6EHXyQoBB2
	 v4Bsf+GiYW1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B70ECCF9F6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180459362.31462.8222831547687999996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a1b3f69944047a679ac11eddb2ef62169c65ec2b0c4f2f3e58be68055a6e50
Date: Thu, 30 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761804593
