Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9F1BD017
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727767554; cv=none; b=WJjku3hhbAboj2BSDhTJW4Ia28YchjhuFE7V1fI2py8sfJUtWyG3ftzESEt4wI5nw/rGDlAyOP1QfEWefrBIkfLlem1e09iZwFVK/cfKGW15jecPAKEYu0QlCGktMNwGnRlKj6ykrJoLddC9YewpuawZCPE55/GF0DrkTlHacyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727767554; c=relaxed/simple;
	bh=GLcAvPz8r32lC4PHeagkaZxOr7GW/tiqoh1Jwy9FAOg=;
	h=To:Subject:From:Message-Id:Date; b=jDycPjcL3ofW4EC4n4yPZV2aUzu9zwPIV1I4pldEJuJuPsJxrn4R6MyCakha/p4LSxfoGzAoDQTn5/u9L0irtjGml218BzPwsHsmWE95ZGsu2kjs/iZRQlFBLkh3jgxUGzdz3ubxStGb6PO5T/UlzrM1OpqwKhsgGxEg1uuzXtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqze74MZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqze74MZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB829C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727767553;
	bh=GLcAvPz8r32lC4PHeagkaZxOr7GW/tiqoh1Jwy9FAOg=;
	h=To:Subject:From:Date:From;
	b=uqze74MZc6u33ymvxacIRPfVA5Wj3pFgvy2ATV3jXFYtJPdlXFZNVi0gX7oIcHU2F
	 rqQ5D42ai5KDdiGbIic5uTHul8NjQVqeA05OiQMYMiTdaSE3MjLIuy5ZkPe5Bgf6Au
	 yZ/3re+708+BpphF/csoasCCHnIJUOiUZ1diNYHD1zlcCEofECyC0tXpbn3yRgjIe6
	 w06MW4/jjOzMZnY+OuxWUPsryrTpJRMvAhYJSJwFVnLIgzBXEn+PDcGFqNhpgozz32
	 mqSgVg7Ro9UPAObdE9fDe0J5sNjqR7xtBLan6fqwy9En5GDd1qRGLCSjElCQPsAJ5k
	 OdPR6saC+VjFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFEDCF6493
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776755366.22343.7134431466324453661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910c9aeae91757d7b758b819d794c45e481ce4066fb4edc8088ea5044b633028
Date: Tue, 01 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727767553
