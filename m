Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD96730F816
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778008653; cv=none; b=OzGw7jEUF2BuWScrv8gsyjEPnEYxGHU+d/pLrbPH1E8V1zGovaSZbbFWEm0ZsaFU823N+yFfmmffU05/FTkD90UtAFUSQzchKG6SGyhJp+pYBZ7SkQ9okSmtkYSJTfFyiZT251MNuoBLBtL59Y0qOlZlL3J0OPwfZ6GhAbPLdn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778008653; c=relaxed/simple;
	bh=cC0W9FYAgsmZUYxipgpbGqxwLbTshwEJtzvrz68Ll7Y=;
	h=To:Subject:From:Message-Id:Date; b=PqwPpjBwxJ1LRxKD6R+dd+lAXA5/RcqrSoJNqbD3IigPi9R5aaecY7p7Y+Dh3h+rCfEiZZ8PoQ0PPlo6E+musbYAhgwWk/0l5f7zI4knF+JmhVvJRFzvCeN750XWTJ3yO/Xab1gLZZeheCFISRISxYaJqXD/pJ/obVUWauVcup4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7srpMhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7srpMhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB784C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778008653;
	bh=cC0W9FYAgsmZUYxipgpbGqxwLbTshwEJtzvrz68Ll7Y=;
	h=To:Subject:From:Date:From;
	b=h7srpMhlSSbxCiZixyE+LYcec5fk2Yu5pJRo+n/QDg943+kIlDkFTY2JD/YNCoZIq
	 3fngzl9dOpkTKQofq3eeM5y+qGjtHifAU94ifCZtMIl/Uy6fO4xgEHq7OyfpSYG+we
	 /bKGe1djhs63RH6+cHH0PZPg6q+H65G7ojOdkQ+yfAv/IT0s+mjqjVMF/9EdUdEDe6
	 u0hvzLV9jfOOrmRoEedZxe3wFIAbjJGGHvM7lvIds9Su9nLFVFqpXMlsibMuHo7Erl
	 G08gYq+CucSJOsUx90NG2oq19tAddGgRKER0rMskW2+vM06EQ3A/EhScXqFL6rMUZT
	 8gJDSh+xqkLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9ADCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800865368.31123.3673633773428392535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab69182c0d38a0d4110a8696d71559754da1a97c273b8ba65e1e14313e889cb2
Date: Tue, 05 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778008653
