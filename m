Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A0B30F7F7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769864634; cv=none; b=MPOOeNPXxKSngxQk696z7daoo73Wa1KS0kmbOjd2I0TBxO0yYx4GDya/HtuH2WQrPNn3BqtNOTvQd47gJ/jQzTJfkZEKvC6tUCv2Bs7wOmKM8S1HZ6kQqm3AL4Cw186MIOoB6/IJHtilhC4Fza3zRehHGD2EuU6wBuel41HtfAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769864634; c=relaxed/simple;
	bh=MbC68UEk9zcd5EEkIx0Z3yXhUuKoCr+HR57Ug7coYwI=;
	h=To:Subject:From:Message-Id:Date; b=EVLea4lzEWWxBhtWRtDRDxdwxHyvgMg4qg1SW8AJ1mKAFuGV4CGGar+cZoIvlnXCJemd1Xme7E40NiFE1QzwvFnk9fjTkDHpwpLwg8AxevRChCbG+oIXQ6nNIT+tcsw1AQRElos6EC1//65JcQdybzW7HtTcQDV8HE32s+d2kls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUvt3OAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUvt3OAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1611C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769864633;
	bh=MbC68UEk9zcd5EEkIx0Z3yXhUuKoCr+HR57Ug7coYwI=;
	h=To:Subject:From:Date:From;
	b=EUvt3OAJ5qt2PpZ8IiGhKe7Rc2h8dBrtllC89rBy7rUwl72MAcrNkvbusR/AlQtQa
	 VCOFjfhy6xIrdn834yFMSClFTV+47iGyZAIHYvLus0VCMQoGjy6E14RPf07wL5UZ3l
	 GE2iFl5mp28OTT4mjfCIAnRp/aS+F+dFJzhdVkGZMg50vDZoCo4VfKbMk+BqHeR+Kz
	 JJFPT7cw6RUVw0/mo2PgXAffNI6IqBB90OyedefAFRRcSVnnNFAqgx3fU052ryQuwy
	 LNRBi9f/TXgnlx5R2Rc3fCSIx1kumar85FJvOM+Yyrh5HLordbZGI7VogZZYAtbdYd
	 67at8JsstlYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156FD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986463357.22860.10042971037876041615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a8bfcb6d91f0d48d22f59747a998f477b65a8cc5412fcf770870178d64473b
Date: Sat, 31 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769864633
