Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C3970808
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764050574; cv=none; b=Ognda43I1oN5VfmspP2kiE4sj2Mo5Rz3MTtuRHSwUox7cwFvhozQ0grMEPW4Hi84LdIOh1GP++dCnCpOsIQ2bLJNSDHfxlMzrRd00tAjG8SLa4Sxny7C+Ft6JiTof5KyD4Vv28hFIJnsLKVkENAuczf8NGU1A6ntWUHnH/20rzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764050574; c=relaxed/simple;
	bh=H0OCh8bXF+Rdw2npZjNXkPRJUeCJ2OJc0PITZqSH7YI=;
	h=To:Subject:From:Message-Id:Date; b=Ep5QZkRHe5DahVYoNU5MQ3VJTILFZlugmGGwt4u/4ZMDPo/G7LklqtUR5GhPHFIoNAuEQtxiFsXHPocpvspYTm4abKiOAZ/4bxlstQ9iJ8F7CJ8doy5pe48hfOe8NyUyNgJinuZ/TZuYRdxE58moYyyixZ00zAtdqSv9ai8F8fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZvhlmfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZvhlmfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764050573;
	bh=H0OCh8bXF+Rdw2npZjNXkPRJUeCJ2OJc0PITZqSH7YI=;
	h=To:Subject:From:Date:From;
	b=UZvhlmfo/ZNduzYC8agOR9CFkCDK+n9FE5ihsV9Xt4IAhHe34g+q7WNNlTsPcqwPi
	 osfMhqI4tXElLTIBWIyybVWfBLG624BCebaE4c4g255UED8WPI5xYEMtN+9kKJ21wj
	 rUJOubYF/MGQ6+GmWIWg2ZrADbxadLZP3/o5YNFQIaongj1Ow/IuRuMj80+YRMXZVc
	 QwGLE4XfH4if6HsAKx2hCUlUv347m/0lBzVn3DiFB74hGH1oZO+HLqDMXrXBUiZB5D
	 5SuoNshaHoLu2ZEiNRJxlK5HTJhW7fznN5wlboyMMEDMP6LiBzBA2htuKn+cjXd2q2
	 uPLQVVJFCbULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1C7CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405057359.20178.6243754855136008965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d82d6a0a5f64c4a02474c457d98b27e6ae3d9c244bbd28152799650956a7c3
Date: Tue, 25 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764050573
