Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F20DCA6F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739124954; cv=none; b=rAwlvsBmL9QklTXMQiaufGaqEh5qiRYczvk28lqCsqJn4qU4It15L9ZxjswQ5ax/ggbsy22EgCYnoXR+E9cTQ8Sp71ho6ymmXujblXh0dfWIsnhNAHaWzm3q90LViCzB5HbFW4+tLuuXuIx1wu25O0ZihxxtVjVWFwxZKSpMnZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739124954; c=relaxed/simple;
	bh=5g+hijKHIqKv5SzTLXOgOhN1V4kYOpLNHr/bBF6zQyc=;
	h=To:Subject:From:Message-Id:Date; b=KI5IEGYkURdZVndf5dLg/pcRpy2tvC60MBb3kLPBUF1+sVSSQLycPGGq6lwUTs9oXyBr+9xn2d6UWzDmCZuVHZav6TCwcZjJLsCZhrV960+kqvebi+qGj5ZOlTpiTxLZvbbb8sELP9Me5zYjJCOqA8ovkvefgAfAH52DNw4YJaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agAkumgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agAkumgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFA5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739124953;
	bh=5g+hijKHIqKv5SzTLXOgOhN1V4kYOpLNHr/bBF6zQyc=;
	h=To:Subject:From:Date:From;
	b=agAkumgzfWkoqjeRlVkGfqP/AZBkr2qnEcoqV7hojYOsP55BphxjkhQVu/is2zMVS
	 2L8GocJPecmwaraiSz1usNj/3+qr8cIYKPatpDAp6yl8SuH4Z4HKxCe0jS6pZv3HSH
	 KOjENm/uWncOolBoOiHNZXBMoP1ZFv28UNZr5Sn9iBy+LcwdSNqtZbs6fXb7dPzju3
	 qlGflDzIGCFy+ihgBVBUxt4QS8j79KFswR9n1x7p5JvqPjl45fS3wtUyM8sUGkyFXO
	 vHSVYHpxvcVYqeWHRSbAkyIjMQygoXd0SdoXT0mfQb7PEMoVHcnX28khPbSRYr6Cfd
	 SZNjdKx9mkYXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44C6C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912495370.738.10146757798438284141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6729cc3ee2c1d82c98b6caf81b7242e5b5fed1be4163839dc48495d10831f7
Date: Sun, 09 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739124953
