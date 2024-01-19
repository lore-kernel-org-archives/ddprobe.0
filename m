Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD884C60F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705670296; cv=none; b=dv5Ds7Ke7Ia1zWtHfG8geWxJrtg9wAQuFU+WdK5ZhWrtVXB00qJEI3F2+O4u54RwzDmIizmjAC2JqRxrSqPmzwWxoK4JlhRPT4BOmSBLO5YcMbIEP9TRnK84UYaxqcVAIUzbGrIV768Obvu4/AuDNOPtqqljeGiwU/qgUbL1NAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705670296; c=relaxed/simple;
	bh=L8hLMjEPm6GsfGmqDejHGWwPkYujd2BvJeHHnm5RI6A=;
	h=To:Subject:From:Message-Id:Date; b=DL5gBuQKlM6xurzPRCMrZxmVO4lgJpUcdCxomwh4LeBIr46INaPxWVIU/kKGEZEwPmDUPgPcw+vcMfie4Kved7+ZzNNglbjYicpC2Tcjxtaz4aviUJJUws4fzbBmjTLrdARYq/5F4KqEatrMEFpdUd/Iyvjvn/M/545LB0hRufA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFs4xuRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFs4xuRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721BCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705670296;
	bh=L8hLMjEPm6GsfGmqDejHGWwPkYujd2BvJeHHnm5RI6A=;
	h=To:Subject:From:Date:From;
	b=rFs4xuRk30n2uOXye8gVva9MO1fcl8K8sx+1KJSX6Xd1Frz3O8dLdjNym/BnItLna
	 RnWqeQJ7z7uYqkdwfi+zB5OBu7tS96RZpHW0CCT4f7G1lzP6M/V2toTJ1TopIO3CAU
	 9hCGUPx2r0IV8UcbRGtYEzGUo4tG5Yn+DW60tWME4iiPSPGIj7DWYD8nN974lqZvPK
	 wjf612/VhjtEQZfFQfGcOABAlduFulbgvOUhqUr+eeuyl2yrlnkUgJebSz4M3jaAfn
	 zSJ+9ZnzBZkN7l3+srsszF0QJzGrbOT0dnUpg6PDt+EyOoXKTishC7apuElMpg3bRv
	 mJ+0Qf95k0QnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B886C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567029636.31089.6081472749062218045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76554a23ccce6e4615dc6f19de31f10fc292d4e19ce992787e818cbb559eee8c
Date: Fri, 19 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705670296
