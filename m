Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6E2DA76F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774780494; cv=none; b=NNfTHPB501tZGhkSfjho8Rbm0HSmyR81JflebnG6ACMX6bNqmuHcIjukLyynjeDsUGJ90uc9eajwH6DMZsoFQnuCxxz3Qump88OB9p5BthCWQtA6rPdkB5AsWMdJoyVBDjCiPeFmQlEvlzT54EYrym+Qp6bjZTXCsFtZQvlmrIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774780494; c=relaxed/simple;
	bh=chtSId68U1PxkCB4+D7Eh3MGLMbl2HaUsiI2jjPomX4=;
	h=To:Subject:From:Message-Id:Date; b=Z9lct0hgQZXoIgPWJ55fxSS1w8WBTLt5GhmKWxOhmMFORjnurLQFJdEn3kqVN8pBfNSnFki6VgV6oaau2aTvasl/11+Nil8Lv0drptMfTO8oNlUos+cYg1fDRJ/poWl95rDi59XmuO7wmkS+hkOIq0CT9Rpal4Jq7p0mEYuBiek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFsE6kDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFsE6kDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9093C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774780493;
	bh=chtSId68U1PxkCB4+D7Eh3MGLMbl2HaUsiI2jjPomX4=;
	h=To:Subject:From:Date:From;
	b=HFsE6kDXduI7gDGc5Zkh2uRWjY1wQPpWCoo4lsPjPHdmvGA91so9Zn5yTf2jVV+jV
	 etmcpVjW1zPliQkF18BXBtJgqew12wgpxlbMNOfrbkQh5kcESMKRqw39UcuqDOrza+
	 267vKblYjheB4YCxxsmgXXw/Xm8Xskk9qdoCF+PAZ0MDFfv/NsyFNtl2HEYGHJRQDO
	 CvKH45oTaStcR6TKdLEg8bNUtur5wtPuaf8qHvTfK+R7SLgb/6emeZMiFhcgjcTIhU
	 y0v8HNYGNLUqUo8vQKJbNb+e3faA6xlzJ/0pXey5Z/1hgCeaAp+aHsyGHqZkDXD21o
	 eYLxVecNHyNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D19F3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478049358.28884.12384017721797051292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677db53d218b85e05f0e1922856195166dac03be03fa70f5c4e9dc331a0039eb
Date: Sun, 29 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774780493
