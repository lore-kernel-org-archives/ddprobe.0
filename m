Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6167B188938
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735805154; cv=none; b=Fn6YyHNHt2odl4wLoUOCYabx46zDnPpx7MZmDjRYox5q2NJqrZN8j80EAgu00PcveJtDVXORjfMswNOGdISGF9yvsk6TbsD0+K6f1UwS1DV6FgPvMN6ubbx5NqVHA5t4flod09g7OwHOHUhXfclDTRtTM9l+EwiHf4fOzmUFR2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735805154; c=relaxed/simple;
	bh=hgz4Ow/Du+rIA7HLQRGHlywryLVceUE3DUaoqUyBe6c=;
	h=To:Subject:From:Message-Id:Date; b=kDJjVOO/h1P0kGr9JcLvmqKN5ay9QMsrdnoCzJa82BEEDn+4jT+/9X7xQH1Exjvw/pDq/KpSfhec5tOxDo4PgzWZMJoO7C2EFxSkQEF12sFvoBWd/wB+Z/yrT0sDSSAxOU8iZbsBiXzBj9xUG0oEtuN39MWdubMdPM+cQUubtkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD6fmWZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD6fmWZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4034C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735805153;
	bh=hgz4Ow/Du+rIA7HLQRGHlywryLVceUE3DUaoqUyBe6c=;
	h=To:Subject:From:Date:From;
	b=KD6fmWZg/ZHDap7I0iJ1E8CsELu5ZR9MWQK0xK+Y/dyAFGbqjXq9RhAer1LlLF96C
	 HfIsRUc5jnKo7cAP5CATpp/u48sLG3vtciAZpwIK66TL5G5g+sdeQrlMkWTqH/GZll
	 yBUVYyyxTnEdRo2eCSwlepGR3rUZZAnMJniZqQrV9ZXbRCsWI2EuHjP6Jhrghe2TAe
	 J1x3jlj3hVsnNNn4+5swLvkuOXQ4N4luUCUVj5/vxO267+kNOY6EG1MdUMwjExEaJB
	 /FtWz6QZLa6wq/JBsL0gb2IffulG5adhH9biI+7FJP1V69ZI1rGo3Hs8Yq7yMiFMmo
	 dMjC33K1H4hPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8FDE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580515369.25154.9820402559518522458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dc89bdf259aea13f5eefe15b75df636ffad7586616765da1796d54f74d8830
Date: Thu, 02 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735805153
