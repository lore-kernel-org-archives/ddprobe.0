Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F2212FB27
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718794163; cv=none; b=dS2Y3FuTzhQRZeziiWrVt64kyUxxNN+IgD0zApIYZ8y/Z0/qxMVZs/KhdpNehIazi3O4gae+xAEMhHjkB+oWG8ch+pN+fFBNTVPcsq2gtGLr/KzWOVArl5A04Xn3e65CSEyeCoTyvKvTzxszOLagT/njPgTvLufeOANzB2mh9wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718794163; c=relaxed/simple;
	bh=LXG7YBpt6azU92tIRgyeSq7X/0qL4YuXuTGfbN5/Hzk=;
	h=To:Subject:From:Message-Id:Date; b=AXjH0GEXfzmxqpQmeicC3mcflgLwrSNcbSPQs5bH6r6fZl2SAb+F7XuDQ3wbdTmr6W8KKs23j+0JeBdH6Dzz6VV+lcR/t++eJ8LQ9pco+azOMIgeQ1Io2G33spOzbFHsqTgKFEXndxW5GDXLdOKlEe7nyfRqeGrrTecNSBlVMAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxbFs43H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxbFs43H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718794162;
	bh=LXG7YBpt6azU92tIRgyeSq7X/0qL4YuXuTGfbN5/Hzk=;
	h=To:Subject:From:Date:From;
	b=IxbFs43HxBvcZpMBG2UL2hEC+W72uvvRsrwm5O/6jPiboigmzizvrf/YsKMR0qjig
	 1nCmtuis1CY7LAcNDuEs70GbRoL9V5aB+BOHNNXGJlglV2Vfipg0conB7HC0HvlIu/
	 RcIPBmjgAsdekc4saZhfTyrSVYqEIxtPhpya0XgyF/uKGbxv0a0GjXLzVp/YYolL/g
	 KGVFUzNHAr7SttujaeCBs6xDIuQHs7YPj1rXy5i8XnCf2vXUV346FOdt+ijKCRaEPh
	 Z5yhkUvdJmFhzXjCmW7+QAQFEhUARZ+GlZmu7PgCYGbDHpR6okBHrV9STIBIoroC0A
	 zZhq+1gTfZVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B99C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879416278.22195.6757051567014329917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60193b2ed7f656ad9889c92b73fb19de5c220851ce3aa5fc4d6a26f052dc5183
Date: Wed, 19 Jun 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718794162
