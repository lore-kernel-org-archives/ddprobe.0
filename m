Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E737280CF6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696634; cv=none; b=K8DtQWwOGrgaupSlRQv4xXpwy0utfYcQvT8vRVsvN6lHvViopJ5VrZs7mpS76qJFFZZHwMWXE2hAtt7XWfxMHiWQZcE3un34EI6Pau/xNql6a1J1dsX5CV7rtv2td/uOwLF1VXrrJeLsxqVl5ZrzkCnbtpm97X5aLWEOwesvGbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696634; c=relaxed/simple;
	bh=PuptVlErfIAyjxnNZgEpqWaeqq8G9xpdNnJNUeghgxg=;
	h=To:Subject:From:Message-Id:Date; b=AWdcEfQP5UmUag3uccg+/9CGmNw/DROiZCJUJ2kOmTY/4Ic3yKEXAfqZDRIRCw5AmGO65DbR+RfCq2kRbv0h4ma+QjdqUNFwDZwbcuIxCqGpYXIFbBo++PnK2xgIhTJ4qwXqENkkaEiLtplt80gi0fA//fNtLNWYr0svO4dzf7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFXd1f1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFXd1f1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA10CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696633;
	bh=PuptVlErfIAyjxnNZgEpqWaeqq8G9xpdNnJNUeghgxg=;
	h=To:Subject:From:Date:From;
	b=ZFXd1f1uYBSdjk0QAiSWQ34iBPYdW2pERkaqj+wLj1b4AhSSZIcV8a+UHGpTyLq9k
	 X8a+lo9JCIzlRHwTqaHrbRU+wDz/FVArKRLNjXrFGGBlxL6HUbjieGq9GLl1EHNMwK
	 O1YjfA0b9f9SafFh8dKCApOzxwm3ihjYmtljSglUblvokVIJT5NlcjaIV03A+Ndh8F
	 UoZNhnr+P5hXXSSe8dsSAG8JYbYdlC5OOyIwr5nEdc3azYS4bU+fM9AbVYFyDhmFUh
	 srszd4OBb42r1/UC1+jgXDd+If3PT3M1F1ntP3fg6kKEXoTCMPgJYfBR1ARD9tZnOW
	 bj7VcZozPew8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A8BE7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669663360.13694.1035765154345671846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5ef7135f93e352310366dd1a71ff9df75afcdaa1a6b14b18a2b95bba7468f4
Date: Thu, 25 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766696633
