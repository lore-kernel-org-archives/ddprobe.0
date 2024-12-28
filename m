Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF101E515
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735418154; cv=none; b=tWF1PkJIURP5guk5jILJqfGhQwMmhny64bkJalDNCcNf4Edz4ObJaweUcmMGVzJ7yaIt+PnPXVsAkVVOnEtQ9+mUlG7TQJ5WIn0AaVxvCXYVDRNDttlNJaDsVwYE6UIMQ38jNfIA+Pd4miPuazzZ0gNSsZEW71w7rJZX4NjxECQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735418154; c=relaxed/simple;
	bh=Q5JYW7pQsqaE4ZlATWYe2QJlaf9KjAhtJzfI+OCpAmo=;
	h=To:Subject:From:Message-Id:Date; b=p+OuaWI/fxnz/wH/qwvcTOAkZ7y7EnxvY34QagIgkZdh7ggPz+Gv2XlVA+IQBKrzA3+yO2jR6YOhIZiDZXoCPa4nHT2Txcex1goqkRCjk9vFgX6j3whmktLOE9jpc/wRjajE9JgmGnhtS9ZtEGmWnXNqYjSX1yx82Bumj65cxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV0BjyqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hV0BjyqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C082AC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735418153;
	bh=Q5JYW7pQsqaE4ZlATWYe2QJlaf9KjAhtJzfI+OCpAmo=;
	h=To:Subject:From:Date:From;
	b=hV0BjyqOe6p3+Y6HODHeKdFW1Bz0tjg/sPlM4QPbvEvvIIRZ/R1104KvjwsrFN4gI
	 zxMQwByjiGiA+ydcS6NzEVkX7ObmsK0QNeSs6s8xXmlbehKckx+B9OjUG8Ts1USPif
	 MA2onOeeFoXjZps5AKYejAimnbIBLIaP+vSfKJOiJzrpONMzhUVo3/rDhrzovZGYVB
	 lAVkjg+RVmFUSaDNJuRK34pyTugTV3/oDnJfR9hj7l8yIexBvj8nYfy9YTkWJYUeZO
	 MS9j2tV43H2y1DvB94olczqjGJtxclK7/5JeEchIzmUGsR7YCjD9ko+qa66fhKBa3g
	 /n7+95FuqUJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1655E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541815363.6005.7796336171513118101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc261f02c47e1429874691fa458f2421d3e03e09c68cb020d3d587af5ae0e035
Date: Sat, 28 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735418153
