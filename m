Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCD93F87E3
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775040934; cv=none; b=gv7GRcCWM2dlyP7B3Uh4xCMba/jSXMz6hSzJ/8bgoBievKgRiiUGBji5tmn05odXlhSZpDVUB3sZgU5JlfT1JwK5Ds1j5I14PJyi+qiZoDUGU317/aQtSYdQTMgo+BQVrba2eDFCjvKCTd8aVtm9qYaKTsNs/Dw8WcRAsnotaBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775040934; c=relaxed/simple;
	bh=xloyOhEWr67zurftE01Ehzgh8YS3tvA9+/FP/jurTkg=;
	h=To:Subject:From:Message-Id:Date; b=dIkvUoijVbbxKzt6f4XAnSg4uiEh3f3vsG7+jlDuklNupqWturBIsOMB1mvO707BIGxMd7BnP9SE9fQUnXBodCgCJsd2oZSkPK3u+BsfHFK8z59Kkbw0HU4KcAPf6BV6su0QFBnpvNvBzO3+R0Kq5Nr6sjQhr9Ow4j7oOZSri3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJe6qpTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJe6qpTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7B5C2BCB2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775040933;
	bh=xloyOhEWr67zurftE01Ehzgh8YS3tvA9+/FP/jurTkg=;
	h=To:Subject:From:Date:From;
	b=HJe6qpTC5ATFoYma8J8Ab51VaqgFva7YExCXpXPasmyZvl/xqUKbCw+jF7WaD8Fkj
	 moAMuCltHrQbxKW2l+uIGDfdSnqHbENeZJSzXfNWZpYK5Lk1k3GxWYd8U0LgynFSf/
	 BHpwrlbud5U/BeXO38GgrsfLiBxY6AM05NSFbTtyqZCf6YHyycG56v9QUUUpU2qWNP
	 rCCEZFQuoSZdF4+jjiNv63ufTUPPNS9WBN2gU0CUo/l/hX4ycvRI1IaWIhjrtVBPtt
	 Di4kYtiO1QJKtjjzNTVx4Y622JHFhRM2otwGfVFiUF1BhlJOXfxxaanbL0yvaJnytb
	 I9oFypcpvUpHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA751D35173
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504093369.7033.9548994501832343145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da6ebe2d576b28aa50746c4bff7dc31747b1e7f479075abb9771e98e617d2dc
Date: Wed, 01 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775040933
