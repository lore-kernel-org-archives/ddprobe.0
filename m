Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A659DF6C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720299983; cv=none; b=VcZvTCXpEn0TFY2balP5wAteyHZnjtDFOGXt72w4zGRvCc8wIr6nOXx7MY0kAEYlIQuAahgxdSWXNGruqbtZFtqxVaZDsv/j8FkrM8ftIBvLOWS9aXkAWZObKN2lB9pDQbzS/gFBVJnKVVw2b8gE2ncO3b5JGKSKkfnAm5/yVY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720299983; c=relaxed/simple;
	bh=s5CcEQ+Tn8A9EfZ001L7JShnlC7Uf3BWMzQr+4G+bG0=;
	h=To:Subject:From:Message-Id:Date; b=uL8/YGDZofni00ThyrJu9YLH6Rudk4qNNtIylUlC0Y7xptGFi1wZylJoS7syws3LfjySqrjTXgnlsn7w6ZdhOMgHfbPJnfFNBQDrpeuL4xgaTg+UkDQue1A268LdLVlD+cwwFzv7UcPsLiLIL9KqZYhCjQ78FiXDZJjVd+B0shE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsvtOrtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsvtOrtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9BAC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720299982;
	bh=s5CcEQ+Tn8A9EfZ001L7JShnlC7Uf3BWMzQr+4G+bG0=;
	h=To:Subject:From:Date:From;
	b=LsvtOrtrm2ufgkoj03wO84/zsGCKtnB2TP4SFGsvwa5Pl56vbFeJppnTpx5z6J2Lp
	 9U8MQMJqVzXESDBuEn4kcsVEAZPztYBW6/ta/xEkTDL2kMp2yi+Xsu2KWa41oGllL1
	 iaswckBbz2ThO2wrBjdzfMusxfo6qT3yQRCCgpRwxZg/wUSdGhArLI3UGctZAU9u/y
	 Qms14rT2+XcvZlY4/HnQ/iYB/5wSWSV+eT1aMPGD59xSwKmmM+SzDnHy56u5Cvuqu3
	 PC/7J+vvT9xHDJNpwhe1g8zu4/7omBgXceAl5pkjRvvjw3pT7k9drn5IK5RLRwaOz4
	 7B08sR5/yE93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2186C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029998277.31678.1843524185004793073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3415416b7f4eda0cee6c60a8e9370e41f47416dca32ebb833968cd56f56e4ca
Date: Sat, 06 Jul 2024 21:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720299982
