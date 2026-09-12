Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B2237F729
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789200634; cv=none; b=aSRwgo9ykpBpqq5qd2JmX5DjUWhACdGiucLfqCv5gR4O4YmjDIgKDNWokqtSaOYhST+IAUnAHZc3e+N5kygWe/7jV229GXu4C+zVVyAdqFw/9Kvmalra91S20kUviFyJOLmHDbinXbAf/ZRMfXSBATkwnO9gnFEQprUXKbqT1lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789200634; c=relaxed/simple;
	bh=zpQtGfmgN+DZ4ZRJMZClJkETvTv6srnEKX9mUQsAHMk=;
	h=To:Subject:From:Message-Id:Date; b=bSaex+yl8T5lb2f4YN4I59AJngmyUf52icWqCrP07haDkWpTyIOvxPRLlXOMVPY8JQ2NOarKXWDGPj4j8Cf03z7Um/8daJlqq3QXJ1alCnZUqn+Ui50HtC+UWPOk7kAPVsEy0cvyTvD7v6UGgcdvnzouoSorScC35ftOCveDm8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwPacoTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwPacoTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1566C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789200633;
	bh=zpQtGfmgN+DZ4ZRJMZClJkETvTv6srnEKX9mUQsAHMk=;
	h=To:Subject:From:Date:From;
	b=KwPacoTngaZJL7LT8k8L9GORfYFbWwNE4cLRKfOpBfNdtt4gK5MCJ5DO72bO/urHS
	 1vVGh1rGMnueUom2DtetdVUHG8zTj4rjgUwszps3EWhGSQrq+f0DY4P0QQPzTLGZ+Q
	 cE2LwOPDvoTR5UiISxbW4pF6q0kclxUsr7Q2kM7QA0HeP1mH+DuoiyWoEj8PZIsFza
	 EuKp4u46qAobUJuLmNPDRO3u46/3TMrgU7veLkYZ0SMToME+ymRGvXCKagOdRfTXrP
	 AG6jx2bWhTF4ZVypnEaqpdmJEKqalVVZlmtl6eVQ9tW0o8gjDJzSv3wj2z32njaFLF
	 exIhiY1ViI5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CBC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920063368.27542.8758512022888537117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893da7b68f98985159caae2ed47679d84a8c80d40374e32f7cfad44af3ce0b84
Date: Sat, 12 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789200633
