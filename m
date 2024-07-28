Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE1858203
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722182154; cv=none; b=VYijRbXrNp+bt4C79TxsrZsbbO75sq/CIerHgC+272a5xJ2HQW7qwEp54Y+0HqvnCu+XA9Lc2xhWfXd427K7RVI6DjcBTbUGhI6sfukm4Oog2k8qj/EtjUGBlwpfR1B8XXr7W924jyxv7XBrc5ib0cShhu4FDNNtyggfKicQjo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722182154; c=relaxed/simple;
	bh=GRP01kswVXoIamRo6KKloVECtvVdmgtiH27jiOMuPcg=;
	h=To:Subject:From:Message-Id:Date; b=surlngAXSEnE0VcGgp8V7t8R8c1cKozCGgzTEGFiOvKGjrqtpiZfctMEdXLg5y8XTVLdMivgDXTzKT7gsLRWiH/wutp6JVmbn5AJbWEc3ky3wJ5C+12z+6lIGS6bJYMgTyFU6pa5b9DIbtEcDw4iQK7uYKjGyG7VqD6p+85exHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiURRaSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiURRaSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE00EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722182153;
	bh=GRP01kswVXoIamRo6KKloVECtvVdmgtiH27jiOMuPcg=;
	h=To:Subject:From:Date:From;
	b=OiURRaSZyHcde/pQEkd9emqM/g7EwksRlJlzjvtcNuwnOVc4tVrHUhH96tmPVYTu7
	 YiRQ7QoD0sK/TVtrdVgrWwzxzMW5Hb4HktsUXhYvOLsB45AHaW8cRlI6jgEXRvW46Z
	 TQrXC7gqEUoDfdea7+850w8TElugPC9omaL6KZbYPQe/2Q0Wpk7rNLTF0zpUFyMvoC
	 VHpUj9b6yzYnmH+uA+nO73Rtw6bCo46qQbX/pNUSLTe0THBmiwEImamlGV6+Oc8XwQ
	 AOOE4DC0/r53LrAP/v7VnTwv4A3u+cV790vPpKYsQ+DbOb9eaVb2s0rvLX7f4TAUuP
	 v/XbtEAsOToIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF9C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218215359.30297.11846476755057215091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81a796fbb544f6ffbfc16987733943f0e4ab03cd48618940d52d0fbb319c951
Date: Sun, 28 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722182153
