Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8C2C181
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757932194; cv=none; b=ZzJyxI77WfXoxk6Z1ajYlI2Ly4o0DDPcVCyVmRrc5YKIZ8mlpjcH1DdYhP2pTaLT2s3fOys8v/wo8GxIQKNl8vddjRn2uir+KNaFC/cXEwREKfFYm+zkHyq8dYoqkq7bHumlEx4PEEp7KNZO01I0aXjlGFjWUvRFfkrpA8J78oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757932194; c=relaxed/simple;
	bh=GyNN/1zBegEISAlmP+l7hrZOFjymdz3UhmsusfNnLVE=;
	h=To:Subject:From:Message-Id:Date; b=rfh6369KxG/HuDgHeVSTfsai/mqw9ltJUfe3bk3ggzeNXlhDISaeKIyw+EZKvc19V6b6jSWEVC+SAFWx3M9MBmFiAO7I/yyF09YVAC9/Q9ulqa7FgYnKDMWha67299c2rH2q0R6jW84KI6voIzuwD6XgaQLTwjAaY18wzbSAKDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVhvV1OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVhvV1OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CDEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757932193;
	bh=GyNN/1zBegEISAlmP+l7hrZOFjymdz3UhmsusfNnLVE=;
	h=To:Subject:From:Date:From;
	b=gVhvV1OFan9TX+w5KjtWJIZrwl+eZpl1XICd8Q4ViMcmKyua/T1akL0Hr4bv9wSx3
	 9sg61Rn9Kp+omBJmyNFTXUsxliJG6EalXpstzUtfDiUOnA38BSUhrBBKy/a0oJYulH
	 /lrursZTqEuYy7zW9UJHQyeBcbW1b0zhy9DWIBBguwolijwR/Lrc9oaM5xlimhmkZh
	 x/XpuseMnvM7+sJ04CoYKiQ7uAsd9LNcmUfjMLXoVQ4nLviGLT78t3j1FHKisct7oX
	 zpOfjNgQeShUQsciUTAP3NWyEI9wPd1AH3eldlRnCli4Eu8myz2MCvokIOxJpkhCff
	 aoMwur3XsiXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D3CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793219358.8319.2486894626088563991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c262ac04d0049eb579309d109dde95ca6227606a387207537091397dd99467e
Date: Mon, 15 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757932193
