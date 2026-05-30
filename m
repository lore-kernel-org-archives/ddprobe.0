Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9D4394780
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780127014; cv=none; b=MIwybbb4FYc6WH/vIOkHbrpGYO9IhB/fmWeY1XBNYKQqdcMf2eAOukOyWV/MqRdgBVGGYJkdCBz/N39vJu0tH5BEhD1emQinis7M5I+PIMJYfnb06kO/RpWHhqWuA9+gQogiBjg93WfVtSC5jqwXKb8ACIQaFXlHoFox4CGVWeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780127014; c=relaxed/simple;
	bh=gqSbbbbZ4nZWXeOfXKkz6lTmyLEJIOCJEbF1rxnrQxs=;
	h=To:Subject:From:Message-Id:Date; b=bB1F+ag5nx5hIiVFc1E7ff0+F+7SttHR6hhxND7TNuTGEv0knCcsq73oqZuDWrFQ+tgjVojGIxPqqEdl0tCBDakbPnJ8Tr3+uMI/644AJOV36BP3cBgyiQ4xHhJE7HQjxOQ++6GUp58eC07UKVTaPL/XsIVuh6uNlfVVOKJEQtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgyZ+l4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgyZ+l4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E92C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780127013;
	bh=gqSbbbbZ4nZWXeOfXKkz6lTmyLEJIOCJEbF1rxnrQxs=;
	h=To:Subject:From:Date:From;
	b=ZgyZ+l4M8NAW5mmQ66cAduXHFHkI/eLoBauyV3cOyc87LHY0s3fN/DMEqM8t/Nqlg
	 rekiamHKaupQiIyzCTmm5NCFDqYBvIci4ZpYAO7jrx65k/7X6S+2on6zrYjkhYEldL
	 sVGRWqz76O4Xv6I3w13fLmEeCnxojepoMOeD3WUUuirDbJSJ8yKLFTyV+SCOUqw6d6
	 NI3SXhynxAnz7aSS0zWSAXKqoc3GwFCjweJjt7CWPBsXXzhTrJKLMblx6sMDFtMLSF
	 xhrF6Mqk61/Mb1XQRbnGVAQpJ0W01opipOeZayoWyD/cxlcKTd0SoeGEftaSNvzXBW
	 8nHs6m36RUYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC932CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012701367.8645.4177941040511608471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaf7b71fdacdfb9480e0355723b4413eaefd97b644f5d8293b3e950532d7ad5
Date: Sat, 30 May 2026 07:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780127013
