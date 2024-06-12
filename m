Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022FF17C7C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718207303; cv=none; b=o3hKkAnntuQvCE89XuxLW8fJo/D9NYf82au5/0oje/3UuvaTgplQDkApS/qNkYM5W3bxSh/NFSTiLmAuIjLHX0exN6XJht53yhd4Rjtvw63yM+ree5mizGx5ChtpkvPcARyncdQ0A7UOK7ydGnh2JcxOd+Qno5PctCtjg7jVz08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718207303; c=relaxed/simple;
	bh=unogm3qDwD+yQ17nN/Z3pK+rACUSwcH7QkeY6gOfIcA=;
	h=To:Subject:From:Message-Id:Date; b=YAK6MkWvmglylQ8Z/WAmQXgPUqnPPU4u2J8pR93u/GZWBSwohHmJn6zJ9PgqV5oBMvXpiHaZEvCof+zw27Tvpjg2ScTegNGoM25o+ctBAc1bpIWZxjEhaKEe6oW514AjJrbhOSE+8nlYjyTDyo5C+FcCyflJiN4ziG5woLYX7eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZnQNLh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZnQNLh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651DC4AF48
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718207302;
	bh=unogm3qDwD+yQ17nN/Z3pK+rACUSwcH7QkeY6gOfIcA=;
	h=To:Subject:From:Date:From;
	b=lZnQNLh5YWxbsLSHB7biSsSczT+E3uRjD4ADuWezj27+SOEoRfDUXiU72VgqLZQ+/
	 YkpDwxiYV/Vy6EuTx62HGbQyL7wvQ9/8uSvb3qFhlmyearacRANbIyEVagQExDQBxb
	 Nyn5PWPy7JrfsiEmCGRtY4rYOYOQHNOxLy3Hjb1ZwTiCpNJh3RgrCdq1HixpIaRZ4v
	 AZHMqsCE9jSfozhLMofmgeMqC0u7tytQVWdbDdSUIhh7U+MvCSw/Op4t6UaiNpGtGc
	 LgqypSTgHME6Bu2qEtl4IMWrm5MX9jii+JEb45QVzK2e75NaqAdRer8ckPWJmd56qD
	 Qz750GZ9PhB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C320FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820730278.18035.5796799386266539331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad6e1cf164636d687fd11eb4081ac371418e1789187d0e7fabc5a9ddfb5e071
Date: Wed, 12 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718207302
