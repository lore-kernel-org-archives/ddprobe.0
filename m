Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4180B3ED3A6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784014114; cv=none; b=ppzUzf4Nx95164Azhxd/aobjaVV92e7TJ595JG7XzwJeHtwEsFUrRS+ok29rboqhcKbangTIAWO/qJCEhEwop9PW6yAVmbcA+dhlXS3fvqFR+nIANlLTX2Q+WQQ56W6Q4vGfYYfjzu35IcI5BDrRHPcd0DB2qP5E3DnJUCIGSTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784014114; c=relaxed/simple;
	bh=hiYM5TsBpzUsHkxn9WTIXhBUz/4T78r9zQ+bH3jIKHI=;
	h=To:Subject:From:Message-Id:Date; b=pxI4HwETWMAX5gMuN1sZXT/nYV7cOqOomXaEjc6F9PWlVK4IEVHqu2C2LV/qj5YiUTukY4ukRRpU8bud4dNYnKrfOcfUBqE7FAOcKMFeyz0W4c4HEoX5NHVSpDc1NpUUWgPRy95pKL4kB15eEYZH4GAjHtxII0zFg0H1ePopEhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZiPYGdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZiPYGdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF8EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784014113;
	bh=hiYM5TsBpzUsHkxn9WTIXhBUz/4T78r9zQ+bH3jIKHI=;
	h=To:Subject:From:Date:From;
	b=gZiPYGdEuj9T+oZIc2EmEq8YfO5YkjwhH8Z144djiqvYoY5CXO/Vcca2PA74Ur3np
	 vrpkZ428iq6pb4xPubVTj515pnXXZzCcmGcM3F+cZsPOeqzUKrT5BNptcDVxqj+6Cb
	 bcToOda6ed4t4s0ieTgNEQ6a9RRw7HqW85kL5SDOkdkKZbKvI59DAGZdCSoCgav6dE
	 ljrm9UUlrWNvWMW8J0HaK10J88doQI5oS98vTV7f4sKhL+qdMVj5voClfpldZzOAzF
	 wFSD4tz172GN4MYj0+QIN7OLGNCrtpXZ9DkJNWf7Cn9orEv84CjZqAaitmI74IxDni
	 SwzdfYW7s9TYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE9C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401411368.6911.17090824628456215431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb7dc0acd5ee8b80a86951a1a66ac00aaf34498dd442fc288e682e8bb934f8c
Date: Tue, 14 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784014113
