Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE03195FB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779655954; cv=none; b=qaimqqKEEkf89goDlmkZc2t/+DeHKuUeyV/jGT65RdapL5nPo47TXCgrbcSXwxwirR6D1IOpx+V/fg7BxkbX4/8Ah8h5Wh5OkWN5VBnczo1YgvOgOteVdmDtUG/N1ZcnMOMgO7Y4xIgwVN08a/JlwyWYNfai+zhCLK7dhEGG0qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779655954; c=relaxed/simple;
	bh=t7cqOXo9HWgeiRT/0xCw7Kso4MP477GUC1tdyZF1v0U=;
	h=To:Subject:From:Message-Id:Date; b=XiAJSPzmsk3TeLr3I0ar1nMH7qa30LvGeq925SNJ8tTpPHbAxxxtASpid73d1CUqUC+e42VPKt4/DDkumI6hpvQ3CumewsJQWQQRTb9dZtpXCxbWhLFjeKSCada/NOOkN1CduuIrDSGw0V2c3WI5bCI9eAI/0+byFZR89cHnTK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0ykBMAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0ykBMAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8000C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779655953;
	bh=t7cqOXo9HWgeiRT/0xCw7Kso4MP477GUC1tdyZF1v0U=;
	h=To:Subject:From:Date:From;
	b=e0ykBMACCD+TH7jTlLvTxMKV1P2HvvPB7O5V+x7bjmMkkr71Bk8LERM4Alxi2lnN0
	 bm63T7RqoJms1yOh9EQKXNPezz+8036shf376K0AJ28dZUAFTaHghbKWT8dia18lRs
	 AiYR6phP6glQHa+BWI0a+pSrv2Xk7Pd3Gtz2T4cYkMEAy73PrHfqJEC+VKIFSP1uU0
	 tquu++lN/4hN4J/AtO2pzV+HZA2lBcVMD5oVq/3hHcFIiBfeUhUia2XATBQv8HphaI
	 yknFcTJP+DPg7V//0zI9CPlkt/agWdkBVmSNCvCyOC+ZicllzKv6ZjUV5NcQdbkxsx
	 815jH2VfdJ1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB318CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965595368.8599.2542995439858573422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d638a5d2f86c6a5cd4689966eb7fb42540d69f7f93e62f4cc4389c0ab16af3bf
Date: Sun, 24 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779655953
