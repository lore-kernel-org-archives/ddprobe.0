Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FE226CF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742495994; cv=none; b=OKTJwbXcA8n5IRoULMPoAXauRYqZw7LuPL5gZ+YYpIZ0s1Owtfhanmcybbv4NflpZepY8dahoXsarWoxOe+luj1+QdVnmPHXmFCgaS9JGWG6H+P+gUpeUl8jdT5+DMZlsyA230eUWZizkIBWsiAjzwbryYFJXNAO/6P0NuOAHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742495994; c=relaxed/simple;
	bh=Rh+iZoYdZE8fpUzpnRO0ttBXI2sReXIlXeqmSNBcFmc=;
	h=To:Subject:From:Message-Id:Date; b=TX5gDfuekGrQ3MUnECba5HqXlQzM7grDfsgaR+EyxOy1LabksJojHjuPFyxVJNoSd9M+N9q01IBr9nBrBWhazMwkybQzCca+srbaVPiqM4yM2cTUyuoAxCpu2tl8zHTEPU37p+Hj347zsb07BTDOfNGRHa59X2jTfXxwdqe2Fn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSV8oHic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSV8oHic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1960C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742495993;
	bh=Rh+iZoYdZE8fpUzpnRO0ttBXI2sReXIlXeqmSNBcFmc=;
	h=To:Subject:From:Date:From;
	b=CSV8oHicCfdA9Qqtjp5WJMaWYqs30XC66n7u4YB22RsjOVQi9QGqolDQI5M3pjGxT
	 LhoQvZFND8HG0RyZGp8aZWp5nyM03WEBWECmb9koL5keaQtj3jSLP5COfcnlHO26MY
	 NMD30AeYmjD93MWutXtafM9kFbjO7HAGhyVQIgx0i5GdseT8nOxxCb7PllGDQe3xYH
	 UC1HY9R5cNe09tMLa8oIg6z8e9iBxNmF2EWkHqpoKA32cJqfZkc9FlRIdzOmDrOkDE
	 w19ieEYJbaNcaChpTc8kzZi/lzEGHW+z4eMUuuA6br0phfFVLZwFt1ZHLQUPZJq8vO
	 8HXVcsWMW20Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB76DC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249599364.32232.915394412391116288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b067b16696712553a49c30307d08037c4bcc22a3ca95f8724797c192f60af8c
Date: Thu, 20 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742495993
