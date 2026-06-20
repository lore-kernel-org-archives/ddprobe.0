Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B9139657D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781970994; cv=none; b=EgFE44iNrhvFNBmMiY3pIncylbIJmnILtvzdhbL7Z7zVO4s0ydeJcxSqfV5GgbzQq5uaWjsloiF9SodB9dwAbTN8s3ABCL0iHZw8g9MkKeJbuXFSghpDalnOs3NfCF91oRp6ZdXotOfV1EFa96kfT9bndMKvmwAXM+amj75o50s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781970994; c=relaxed/simple;
	bh=TuISvU0K2MraO/bZY22POVvj0BAMPHDG2qdqB/okyxM=;
	h=To:Subject:From:Message-Id:Date; b=RWlo8FnhTnvTTQ0/eKKgVYlmZnxf28gi4dk20WeLUvxZpw7sOUAvuW8EHq3LYYy0xumJBlpoXv88SW+DfuXOvxXYGD89Zjhu7kCh0XJrKwBLnqbhPJOIixpkdZMKWDu/ekhuX6F65GOK56EoQF756pk2REYRnphftTSdfoWfydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0B5FcXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0B5FcXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC082C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781970993;
	bh=TuISvU0K2MraO/bZY22POVvj0BAMPHDG2qdqB/okyxM=;
	h=To:Subject:From:Date:From;
	b=K0B5FcXdNR+uG+/9NaSnbJ7cUVMwj7fNvZs8MaoC+CM4xvskORZqRMV0Zp4oX9I60
	 mFRrUayXLZqnmEXsabAJO/ZNpGYOqOX2c/fn4phOFvx+ndMdF1QsD/8fFT11owFrxY
	 /uTVAKE0Tus66eEdPCj/ghEt7dmz8syfAkTl9BhOmN/9ZxTe9FQqf+JgXeT30yevo6
	 p6S/HZRy9yh8llAM311flBTORdix1Xv1KqSM605F7Pu7lNGQMSyWduGfNMbRqNfbD7
	 h4F/YpiA7FThbacHLiW/fqku1Yd9mvSrlyug5ysbhqpls91Vz9BWpaze55UL8XFL6g
	 JcIKbC1jmizJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B725CCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197099370.10769.16437840486941184309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a43500663ce51cd8d4f7b86834bd4ebdd864cf6d5bd79b704f4f8090f44cfd
Date: Sat, 20 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781970993
