Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C48322A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724806554; cv=none; b=FCNKqSEicgfcLkVtpsHiCScshHAXCoXBVZwfcjORMZFIREefb2BcZW1KmwU/4I35EqNbK5Ylf/X9Y2X1fgsyfx9rAvALTikHQVFwfKg/OqmjVKRFQeSWuU2BEc/45Rr/LBT7rzcWXhqUCarEIquqDUU6t9W0mhd7+Z9Uj55CDu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724806554; c=relaxed/simple;
	bh=z99uUjf8q6Ssy+Mo3TfpT1uXahp+jt/FiByseFFeEcg=;
	h=To:Subject:From:Message-Id:Date; b=Ilme9Va27CpV+Rzgmo0WxKdK0ONcbPEOUPh52Gmpg+3KkU6nt5tzfJNz2+pOxVj7l5XGCfhbM+hRzr0wlRmMbcXMTCweJ+QrZ2LJBB4/yl5dRUTQbtQIt0A5nmiKraVVCRDTeG0XI9aKijTk2XyWB/ov3N/PYnafjvlU97bRkq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuK7S/L7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuK7S/L7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A64C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724806553;
	bh=z99uUjf8q6Ssy+Mo3TfpT1uXahp+jt/FiByseFFeEcg=;
	h=To:Subject:From:Date:From;
	b=UuK7S/L7wFgbNIFJ0cnIVE93SKLFxrnBNpf69hpVX85VIO6FqElMpDWMMyhp+nZr2
	 0FgQCLR0tnexSo++4Mv5EXaPUZaW8e13qdNCbCZ+aTCzX4L0u4gjSMJbFYE+Uppw6W
	 b01EuHyK1kyM+SGSg5CivzXtFVuRjFhhUgJaWCCenhTnKybxBV7+cVczFvzO9TOigd
	 DhM08O3KhKIEL8t7e/42TXE8c1xLxZAfmTdOkpJKze9dqAfRKScgR8xO82oFNx5UYn
	 1+FHD7mEtmWdWr/lNFm3qKMnpwv69E73M8F4j1XdUN/4V7eL5CWoy1giQHq26sChgd
	 TDT+d/F+M0W6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14FC54746
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480655359.12907.81380983248961047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cef48f6afdf129e77049e246e16e748c51bd9c7a56106c6f9a73c4775ce014
Date: Wed, 28 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724806553
