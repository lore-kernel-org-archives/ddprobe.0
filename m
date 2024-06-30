Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F332139F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719725063; cv=none; b=ZT72xmbmbkzDUzzOWF3QSbMuXv18yztQR3YjJHU13yoSnJ9f2hN05+GET+R/cuTP+beD3feP/Q7ksdqXIIcM/mIMLDOiXzAvOdHRKFrCPn+pg8qBb8uzsuvCmq2CAycRoPkfyq0uUm1mPWFvm/6CBUG7OsKVP7nmOZ8vcNPjhXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719725063; c=relaxed/simple;
	bh=RHFhIDEp3yvYeSH8eQasagJVjh4TA3FrQYJj9g+y0qY=;
	h=To:Subject:From:Message-Id:Date; b=FInq/deyanxvRI66Y9WZOiV+2WxRBOhFH8AyveQpETrUhFYNY+7KPJatRBrY7qflVvyleFVIgzCEbnUGntPafWQ11nKMjzs//5JTqx0lY9/0bxieQYgRai6M74FtCWtdb2s9yYwyX7AZsZNrvkJ1xA+H1Kef9KxJOo3vEk+fJt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVqR32qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVqR32qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4362C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719725062;
	bh=RHFhIDEp3yvYeSH8eQasagJVjh4TA3FrQYJj9g+y0qY=;
	h=To:Subject:From:Date:From;
	b=nVqR32qHZYoxMwZu9kfGF3xEssCGt9pztxvlgyQ4NS6lriwDj3Ycip/f8XQZ9kiYi
	 125MHeWbmh9GG9mRAj4VHYp7xrXORXAjHGS5cmktETdZ000cDdHjNHf8GQmipYDAL6
	 sSRHmsl2RYuWea1YFaJz6EnEzY4fIcSEYvSkPlhqXy6OFqUn1EAQwZNVF1A7P1xny9
	 GuXKjNpg4z8B1QlspI/Dl6+1GuWGQpEHZIWRCIzFkT+zT/l+nVpNMWvSHHfTv42Wkm
	 3UMGl+Y8R+BcuG2lRh0no+gA1QWIRxLXUTXe3F8UZ8eZJFhPF9uHXJuM7FWJ2GSJ20
	 HsJ9TTv9LW8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5BEC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972506277.17875.9195571405392943236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c59a394333f2402ba3f03dd0fe686b3074bbe706a6a25cc918049b56b4524d9
Date: Sun, 30 Jun 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719725062
