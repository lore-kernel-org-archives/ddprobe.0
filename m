Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5143002DF
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779159633; cv=none; b=A+odz7uC0M59+yGdOgfPNK9ch4nbZuNWo84Gm5VITHPMXOJYjGThjTir68NNAUn8D7IuOmRzD+XRR0MwH6FQEGHA1VQ+W4MLDERWTQpcFtugncRi1KK5gXeqBL7z7syIWMe+gUa0jPdtOcXp+Bqx+BmUWRDmucUlczDn858e8Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779159633; c=relaxed/simple;
	bh=iizj9so3kvzzStFxjhLhXUeAlULTzQNm+E7DQQ7CKx8=;
	h=To:Subject:From:Message-Id:Date; b=AdcmoI9F0HrYBE+0YQvaZsY9V54ynOclyvPrJDdT0g83xeRRXYIKwM4B2QRZDhGjN8korsaSrvy4HKl7TDvoWgkvZ6O0CooFZOcJHJA8jJz80mgOr3uerc6h9UwXHNLjVpbRyKMf0NswgYLnTk9/ypZEB2u1yfKIpzhYGWVtY1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZWgAJTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZWgAJTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C2CC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779159633;
	bh=iizj9so3kvzzStFxjhLhXUeAlULTzQNm+E7DQQ7CKx8=;
	h=To:Subject:From:Date:From;
	b=OZWgAJTEYQCUesS/SSIXC+ye0slDy6JyLTNAzkSOujIGfsd4mdSuKtnHxHaiMbUp3
	 nA7WETyRSNMAHkBhqDK4c9SwDvhINo4O5qhboCj6eit4vx6PX+jKyDm5ZrUY+ENyjv
	 4YDBzpix9AwNNJZQf4WniK4BtfRYEfPt6H1FKdJbu/Q/3O0TN3ojTDi0J98xITXqK+
	 CsjVsmaGKSHz6dhPL7Hzj3EvHJac8UbSMhdFBMv5y28+lG+WEAJIBu/J94eDG05bx0
	 fq9zvIcE7MdzEG2WMOYhNgxqewgyHB8HkHYtxpIumPzwjLtMrIxd2Zo5Ka86oxtg3w
	 Sik3B0OhhLhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C4CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915963369.24704.10204805870774019815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c633f172d5fed40e0b6c4cc5612c85560ad70d89e00e0f7c60d0404e52c19a1
Date: Tue, 19 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779159633
