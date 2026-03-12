Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2E0A932
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773273894; cv=none; b=nQOB4MCj9nx03AUvnJ4LI9NlAQOVV4gFaTlOkv5VEh5/bjzM8ykGP0tZw4RXpIOy3HtW/fDoCmdtV5NFNSSKSlR1LAJX85Vvk2INl/R0rR7l/c0AwMK/BIgSWH0Z2ffXVEHcGra67hHhypeXkrW/Lt/odTuhSQHATt2W1fRVOd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773273894; c=relaxed/simple;
	bh=VLlKXl7sMyqB9Rx7wj9xhBSt734Vhw9ktAw4bmlBLnE=;
	h=To:Subject:From:Message-Id:Date; b=qzRknqeqTJ2byiPSZt5CblImeIwz8w2hz7Hkh66h4Ejw5MFSYw+FfVq02TaDhVDVEJJUcJJu37Pi14Z6UCgP0+uxWnVk8p7laTFqaFd/ixGzR/wQ6McvTpsOqsHmhbyovhqyUsZP93RNOu5JQ1n/yr1KWkqe8nSBJjHo1A786TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVpXTXHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVpXTXHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A128FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773273893;
	bh=VLlKXl7sMyqB9Rx7wj9xhBSt734Vhw9ktAw4bmlBLnE=;
	h=To:Subject:From:Date:From;
	b=HVpXTXHqR53pyYVuvRABKIorNC/N5/poOduVvcIAHqNDj/Rd38CKy3LJGthpQ2Iy5
	 ljFYz3ci2MV/RAGPih1Inz73TsF2ESXC5Rc/x0N6mJ57fwvgn+OzZf5nodbf2zxwmm
	 wjyFYAnwYIp02HEniobpqbR7nh9WfJfWgU85MYHfaBdfArbjo2dtViAi6qY4sKxvaH
	 EE13eeKNWJrrS8hHcKdBg2vkKnRBYXqpOPxBdj1PPB9W+4A3wHE1jE+HTE2svt3OyL
	 qXoZEc2Mf71pKsHoY+HzNEnPyWWunywgrlLbWKcBUubkpjkgBaJbFxTtge26UqwTU5
	 yh1RFzqEAopeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008103E2F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327389358.12597.1293963643994289278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df75221d00c4f10162e3c8e99b50925adcae271e189a598c36fac53ea66efb7
Date: Thu, 12 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773273893
