Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1607A86352
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767376434; cv=none; b=elWFsC+RUPl9ZO2NEBZP/MsJvA+KUjJ5ykZc+j7tBWdSXbYPMlUnZYrUbOq/WQb3/F5dJK5rnsOhysIWgxvjq7xTevbbg2pYwpb9Ag/fi5XafEZ0C0+uGdBdXKe50blFoyCb/UsoLAVbJsTDuMYJB/Z/zLwT+nrZb7b2U7uODYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767376434; c=relaxed/simple;
	bh=UGr/gcdz8IKIBHnt/fwB1vZTfoeB8PPBonr0SrrmZRM=;
	h=To:Subject:From:Message-Id:Date; b=ooriViQhMH0fIs3mwGitVz2Cz+XY1JS0eoAD0KDvxSptRVVLOn5K+WyZalaNoFk0aLbolCtyNhbTHnVVQIuOYY8hTzhV/HBQk6BJXSxLNCq0U87ipZg8SgNFw+l/Cy0jQJXeBrvCUipzN2RideCudXhSLHP67xJ6si/Y3qjV/J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5abDx3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5abDx3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41DFC116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767376433;
	bh=UGr/gcdz8IKIBHnt/fwB1vZTfoeB8PPBonr0SrrmZRM=;
	h=To:Subject:From:Date:From;
	b=G5abDx3WQ25412b2lWQkF8xNUSeGSt/2+IOzlbWpbppkzY5gqpnEPkNAdJXZ2rw0G
	 XzzPsqz0DOYjssPydb580CzedYUnojwZEjAtjCz10Ks3tEgW+Whg61mgZ4xbUI+0Uj
	 2dA/QCqcZaHNPTMMNEj46sbaWZ7gbhMhZ2izrf7l1q83FmlmXyDMiiL/NbYjlv6B41
	 3BlvITXe62qeYMq6N+3zCIdXp7KNllGms5GgGqheftwmuHEvQP7DjzXGbMafGMbCBD
	 ze094/0mw0BlvL2inwmQc3OA8jtY8avEL3K1uYe6H4R4qDEdNawYsHKQpRw1ZxGI53
	 2xeSY8QIOkN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9574FEED628
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737643360.29843.22986272565392406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39866767963a3f1bec155e7165aecfd2b9a3925705e3613c02492b7714934996
Date: Fri, 02 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767376433
