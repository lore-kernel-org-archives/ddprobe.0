Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573A02B2D7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726865754; cv=none; b=Ouf1neAFc+GjHqen66T+TTs51KsQGOs57JV6DzQqooYzY/pO6oX3qsMEvle7EiTu+OtrngzJCqfNaptZXcsEVshcyBXfLwP+RF52X/KvY7kqFgfL7RBcbuld1KGOAIHP04auEuyecfHyn9KlIu8He7S/vOqjiOhxKN/tRaBEM0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726865754; c=relaxed/simple;
	bh=HXWaTXZKUMqbSsGctMO5ciUes0EhvvIWoTQCFGVBNxQ=;
	h=To:Subject:From:Message-Id:Date; b=E5KbRgQ7QzwljNooGS3jGDZa8e/AODtYfWs0hW8D0REtmn06MGXXTWByI5vimiVExSSmnwzqnUP9c1oh9us8GidWRKvEX7cXR5upebHVg6u3yBgsicABj0FH59xEpyTFUYjsXba5WYVOQw5BCPqWN9jtGvHL33O2TqAqIhMlBVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AExUC1+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AExUC1+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCEDC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726865753;
	bh=HXWaTXZKUMqbSsGctMO5ciUes0EhvvIWoTQCFGVBNxQ=;
	h=To:Subject:From:Date:From;
	b=AExUC1+fDsZNRkp2Zy7mKM6T9rELeTf/tS8+9YNstJUFrO7ocoZTbm3l3CfjeAlpr
	 ugRYQjq+1ptP2Tvm/KFh3FcLK3KM6D4ANLR8Y2ALD8Orst5OSF71AQe0Sd5GWOjNUL
	 /gnYLhtKSb8KGY26/2fIVjwLsDHYC653lv+GGml4Y4IllH4dl9huLnT3+Z7vW1zQHA
	 VkYb49hGWkZw1C4hTW+Lfqa2d+CkjKEpzfIXSykv1FQ2oX/9Q0BjAdYxzentW+9Sqz
	 uFWIMuEVozKBN8mWkJ26mNnHoFGjf4CfLucfnB8p4aanmcFbCYDN+facYUqpfIghjZ
	 Hvoo9MWOKS9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C61CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686575359.14563.9571729726639079399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f614188800534e40bf7b586142ad7a64904e56664660e98cd12e695352aab1a
Date: Fri, 20 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726865753
