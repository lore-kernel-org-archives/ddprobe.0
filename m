Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F66C33D1
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734873954; cv=none; b=po4w7EEz0+UOY0zec40x186wLrC/mog2doHY6QdheWPmrP3kEUf/EvRjh8rU+0q4K2rg3F+W7Gso+6Hbh2aJDaigfP4Noep9dNy5Fv4JJ7xHgar12SGWMzMwl+eN1IGKKTCri4ckAZ9fJC1/IRpkD/0sbCXMiZ9YWJDjgK6dxKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734873954; c=relaxed/simple;
	bh=Kk45ZtE9vCuFJ00nJE+LNv4c1x2VLZ+M8jpRnaIIuSE=;
	h=To:Subject:From:Message-Id:Date; b=S3zPhXSFtD+WcX2CcnVYGESLi0mYCizUQ1wbzfZkkth/iAGzNqc9tK9pq1FoBwZFZid5xR0Waabw+WS3J27yyuiisFUQTsFeL13iumo88mx5zOfPsmmN80BBk0a38Gb321n2AU1dMej7jcT0JjGIVnhsh+oM0qMo467meWkTSjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNwTDEeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNwTDEeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7E3C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734873953;
	bh=Kk45ZtE9vCuFJ00nJE+LNv4c1x2VLZ+M8jpRnaIIuSE=;
	h=To:Subject:From:Date:From;
	b=DNwTDEeNp/jWpnfXFmUT9tDntzWSZeuzZYVFMLN7vnqMarxVp+UJDChUQKi44T24B
	 TCEc8coT9otAF4jbIhB5d+/9XuRzwFS6ECpi+Hyh1TC19wi6vrQ0AEBV/56Of2+6Dd
	 B6rw61RZp5RTmoH4XPshiP4DpQWnPyCh8yt+f6OTu7NUodVs10lE73Q1tXgIx2TVHD
	 Jw9CdVJWpGic9n909b9OkBnJuhDd0NfPs/yF3+1tTxBH2bEgXFYEZVzObTEs7eE2+O
	 zIXJqkVG9Rv9w1yFJH4/+OD0JxWAlUPYAh00eIJ+3H8xqLEavVwavP4Sq8ZGbnjR1L
	 cw4Eu+KSbcAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBDE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487395360.19601.4835985289655594435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99324ee4df3c4d5b8b765032da5224b0830b3ba3b7f584611b842491384fd33e
Date: Sun, 22 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734873953
