Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D88F37C936
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788676834; cv=none; b=tmqCq6oRR9hq//3kQoX8WgUSyfbkaTDyxJxvuGrXhtDd9+97d6MqLSxic31M63lEF5f7i49zUxNnepXbTWj9nUCoCofvsJoOkDnse0O41eAVvDLKfUhdbOrGDU6DG6qGL3cUpLqmtcyvSQYV09EsHp9m3O8ONNAkdMHXX9R+e8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788676834; c=relaxed/simple;
	bh=HL51gvRjUcVciwARzA67Gyn8EY95i7KJKfKFXeL3aMI=;
	h=To:Subject:From:Message-Id:Date; b=QpU8mKHlTMMK0fiKtZ6JdBQDb3gXsQuQ786kGijjE4KU9CKk5rkDzOyHFOzIDhro/Ujrw30K0JA4xyQMj1iT7Qyd6h3edwKfGPizy1BEkQeUE1VpUj5gvef5RWPP83rSrlRXPeIMwq+x+gmOJOvkBdqX5+rL5+ji8lvjsg86+1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND/K423v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND/K423v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86A1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788676833;
	bh=HL51gvRjUcVciwARzA67Gyn8EY95i7KJKfKFXeL3aMI=;
	h=To:Subject:From:Date:From;
	b=ND/K423vgjFXFU5JLec47Mu8PkxdpVGPa14g2E1p+uMM5qytI7lBfH5ybC1JQy0CD
	 6b0mklqm0pZzP/3Nm9xKHKuLxwXz4G+e+3wdmxZaZQ3zbVdWIGx2aag6jnv3OKhehL
	 n+2Vy5Tf20mqE5+D0noJLVbXE0YlVuzl98HYqrPqcSrIuiADXeOV5kqBuw20E4Yojw
	 uU4ZEJCsF+v8bZnDDCUrZerLYEedrCVPY2YnCSGttj2asutRSn9US7kfkmjjf8rCiH
	 X1JS9ntSKzi4dlSbTgyM578deRuFVyvbFclWvt59rDLB21iUXd4ydsoFHecYT65fPk
	 Bgp8Fyk9vGDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D5BC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867683371.8556.2203758882434288768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42ab78752f08b5b4713d78439f641de97ab38056e1ba148f06342d49ed91467
Date: Sun, 06 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788676833
