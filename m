Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B70E1D7E4E
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730169354; cv=none; b=NADMivTbk0OTtcWBS9JXPRdvWGW3IZ+IcyrkWwedXXVBHibAwpQC3/LOnqP14ra5RdT9CYzFjjNr/PCZV9TDMbsJl47F3KvVCQSGC4hDgFGH7YBmvO1fmAky5TJj/MinvWVvU6CI4ZhpcTNQ+tFmpA+FAjbFQhUERCH3ysAX0Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730169354; c=relaxed/simple;
	bh=A5lYafAqwlXhTnNNb04aZGmns289VIFU9B+wQ1POvJU=;
	h=To:Subject:From:Message-Id:Date; b=uxJqs06P39le45HEVpUtZkt4vUqbT6fKs/ZzuDcpeQ68p4DdqGA1A9eXo/ncdNlOTRlW3mIXwt+MJ1I+G6INLLU/k8BgFKLZsR+dWT5E+UrEBDd1H4u4PUhPL/YV46aT2/CHozJO3irlF3G0Wwpn78jeunqbo1oS18V3O8XkQzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeWPIu5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeWPIu5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4642C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730169353;
	bh=A5lYafAqwlXhTnNNb04aZGmns289VIFU9B+wQ1POvJU=;
	h=To:Subject:From:Date:From;
	b=YeWPIu5T+BtugLH3TZKNRGoCK/W/4ktyn/v+VV8E9HguMdqHaYGpCTDR1voT5aUG0
	 +UCMrUERJjPqZ6zmutygAEa8fp8FqauET5GPLJ7BhYv/kaUkXIorLkBM5UMPwZNg3+
	 PdIeveadXpscPyTbhW3PkmAQsA8T8EhHAH4Yb/6ebUXXwJKNNRpodVoUQiMe5zD53i
	 huZHrUDvBUjsDBVfkuxrG9KqbgbgjiD9lWbtUyNguCXtjNlITghTaASPtHJiCgKeeh
	 zp/vL6PfuJBUU8ZnWEZofzpeVUzfMqOsTSUESePF3NnDrFOS+oXhZtV9RwUnB4VKMg
	 OZzf2X9HEf5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C6D5B865
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016935362.20657.3384322344494686316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebf4aad93f63ac34e3f2ed617fff29312b9d6fcafa27733d344c823732d3941
Date: Tue, 29 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730169353
