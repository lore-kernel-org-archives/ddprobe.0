Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C8A3438B7
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783414114; cv=none; b=BqudB7NTvonocd1BfJ5C9aDRh8UoLnI4LmzsoFb/lyvjOcMQcbSGeFs+5qJWtyb3E5JpHM+gzUpOhHtYJyzWTLJ0O9PNu3bkuAJhEXzcIN9VLW0OPJvHV4tDHl3ySog30qhzhAG5EEX3j2/DzNGL4FtLXGnnKsTLs62jc7KlCGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783414114; c=relaxed/simple;
	bh=hs0PHAGvnId6gebvQqftLuBNvT262wrtIRn5h8Ey4KI=;
	h=To:Subject:From:Message-Id:Date; b=j/Y5mY3s9TOT0oXFu5ty5kiMDWlnmf9KsUNqAo5RhB5BPOhMDEEKEg6LZ4PMlmdvoE6nPxSqQSH6ONEH/YcO3Y7/iZUEjMh27jwM57ttpdwfL3iCzPnQ+g1gv9BmapE+dEx+lyX7xR2kKbka4PP3JY48ttCFzMSmeQSIIwZ4XKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwelWdVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwelWdVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEDDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783414113;
	bh=hs0PHAGvnId6gebvQqftLuBNvT262wrtIRn5h8Ey4KI=;
	h=To:Subject:From:Date:From;
	b=jwelWdVVTO2dTnK+LqY5a55NJzsGjtwiM594a69e3CEBxx1N7L8xEqr1n98sd7y/I
	 C9tI7/VeeYz8AQW8DevSzoJLbSh0t5aOUSVhJNqsxK4S659hIQj6EFiXC+3QO76rp5
	 Ts3n08rihxLP6/z63KDACPmTTCya0cg7hoNt5iV5QeflZmOvmlpKrVPc4xc6nqT0L3
	 GFJk38zO7RXIFztr5biaa3VyMExFQM3EezhRI2ggyZvHXeqG2VdMDKyQp0zIq2/DEz
	 n0129NZxVSnL7jCYlvUG2ObnO0Lcxe0b6Tbsuv9rey/ZA/ktO3BDbnQv3hmJmQ1ht8
	 32yU21Mnu+9JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72A3C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341411373.18415.659371375208484035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc0bfdfd15d39a11cd4d409a140a7f353263af933fe809eed5fabab23282df6
Date: Tue, 07 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783414113
