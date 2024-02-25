Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EF0E55F
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708854497; cv=none; b=O4qdsDNRP1IDBK201zfpXwfT7QANJ8X2N9p91xC4JzPioBKQXPWzUWACaxDrUd9vjnklMXd3xP1pjWbeP63q2Agg8ajf3L8jXXgcoQNzVJCmiY6270JmsC36wPBnwuCV01VRpGTk0iokdQBAcrJ1VZC50ZvVx/JiA6QSxjPyVdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708854497; c=relaxed/simple;
	bh=ikQqcLSpgW9PvtZn54p6SBAmTJMM+VACKxjS+wCuE6g=;
	h=To:Subject:From:Message-Id:Date; b=CytHXEE7V1GzCegqSy7bezUXgdoZI4aPhbwKt5kG02hJG6FT7kOGBIgnXKmn7exweKouQybrXSE8V8de+AKeiGdGXW9xF6zyDxFB66u38Mdrc6/FhrFpNtRfvs1OchwdqjfqBq6oXkc7PAfqrsLdt34W4o6qO6WUe3enR980C+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9INsp+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9INsp+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBCFC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708854496;
	bh=ikQqcLSpgW9PvtZn54p6SBAmTJMM+VACKxjS+wCuE6g=;
	h=To:Subject:From:Date:From;
	b=U9INsp+sXdRnq+B9ZoEwxDSgOzP785uORjFxTKqT1eAbI63lZx7XkgUVXOyXzIysm
	 vOTBNNn5TSyKxV4w9H9IoZRXxYtKamel6LUw2KVstSN5cOx2h9G2YFxPzYOlC9spo+
	 S8vOUvKlWUtEARptxH5NsZe0bwn88rinY/+fJUTIUWM1XepSk6hNkZm8rLVFi7PE+6
	 ugQlutabOfarf/4JfpLXt2iyo0+DPyWh0mir0vtZyRtnpX/ouGoSoaDT6ynovU8u1L
	 1CJVXo+pd5UGM76ma/j3mVykEz8vbDq+OOTf23T3JP/zJ4JCKTgHu4LtgmrKOGufDo
	 dFkbn5v3sdMkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8B3C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170885449637.6973.12410587779747047791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e05175fc372e9c31b90fa7d023aaf746fbf4be2b42e03ef7f9443dbd51a106
Date: Sun, 25 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708854496
