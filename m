Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F29191
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721090723; cv=none; b=cKe7BpetQED89W4XLJE/MWVFzmysAQBd+oXXzOZUfMEREJpGPStA9eSOvNoao8zKBbixrfQ38PgljYK0HOaZbM8bsQ/f6GWK30iV7G2gLHvhvm39xS1vGnhWE1Yhw7AsrxRJRTt6CysnfyLdUPwbPlo1WocIeS/6YVUHtpDXRg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721090723; c=relaxed/simple;
	bh=X53s1TOe+vD/Bjboal8njpi5Evff9ximSHeoPx87Y5I=;
	h=To:Subject:From:Message-Id:Date; b=YzXgD3A8zgHVqpI5iXyyakdwQQIQmYlvg/xUDT4n2Z7M8V1nVsUmWsyiJTRNC2f3K/odpeGyQO8TRjkS9o79fELTf0YCH236sCffC1iVJTZHeoCRuyXdxqxHyOjR7flX8WKqP3+uMk7DWDb7/El3CvfkNhuiiEawRzBwfS4qCLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB1DrIqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB1DrIqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE8DC32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721090722;
	bh=X53s1TOe+vD/Bjboal8njpi5Evff9ximSHeoPx87Y5I=;
	h=To:Subject:From:Date:From;
	b=HB1DrIqHlGHi+3qPaaCryGuMu5i4z+KO+OUtRpaYuwDx8s6NZ2SlygfPZqbaxuNB0
	 atleYSpGQRfwQ+M6ZSZLJ0SUNQzCxKGAMdfvPeA8X7FafT+rtzqrmjkcg4jck7tAg5
	 YiJZfbKU6rgVoWZks4oCS4JpP2q4dIHVn8fdhpU35APi2VlMSypdpucaG8uU3pFJGL
	 6PCA2Jxc9IZ8zSOomkm6c5eXzMGvdfM/5mYQycyCKdK6eiHk3he3jtUqzv/jq5cu4P
	 8OH6hV0l4qRd+Y0U1UWfzvghjCClYFL2yJdpD+amvIArnNVEaBKa+FgAlK/o1Aoft3
	 0b5dXfOdLHvkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5088C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109072279.8582.12133588118277813007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5fb5b21d54be4cd2c18c437530c50ca6196aafb154f10e337022113540f9a0
Date: Tue, 16 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721090722
