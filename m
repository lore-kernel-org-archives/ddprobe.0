Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345881411CD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718285303; cv=none; b=lq7FyO4XxwLzI5rmAoyD/z+ffroP+54Nr/fY8KJOtYttVv61fkf12IiXbZ9utF37siV8aoTDoLSUbVCczZJQY5/tP6O8qD6Wg/3rgqaUlXuAEeUMXQ28YRcDky24uMLb6kYFGlOGnj40FvGFPfGmG4ODhbKVGpEa+08d9fVdfbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718285303; c=relaxed/simple;
	bh=gSLMhtoAtYtZdD3k+KKectJp6JZAmRfRi050sqnZ4mU=;
	h=To:Subject:From:Message-Id:Date; b=OaEk9qZ+BydW7DWEaOiQpmvs0LvnGUL5krjeMBn60O36bDdIYcL6PGX/Q1c8KnH6jGo20mpi9bn/BxzT3olHLy2/a7e5bCcDMKu6CxEijdSejOSCq8QCgRHfHmiQKpjiBPo24ysKURQ91DisE+egYZoh1rE5AZn0A1zYaJsrAz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PugyUJa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PugyUJa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD932C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718285302;
	bh=gSLMhtoAtYtZdD3k+KKectJp6JZAmRfRi050sqnZ4mU=;
	h=To:Subject:From:Date:From;
	b=PugyUJa8hvphBAhHvNkG8gz/wxNuhwizcIFHJ59htY7UsnLmcbC/qAlf4KLkLAtq+
	 6oqKVMbTj3MeY2JkKs1QiO2PIemC3FBNyFb+5TMLS0FkA1MGVJeZ+Hv1rQAAwmnyTg
	 5yaOaEPU+CqOddmE67o9YaSfRqobkQeBX2NHK8nKCC7rWOs+Nolf4hwA9z3muh4wwy
	 vPgbxOTD3JnW3yIwcGVBV2FhqAUwvEAU4mKCpOIsaL9GZhjWCROqmVs9S1msUJuuWQ
	 9m3UaVnHY+xFax9BuywBmkKsy94BsZzEYgNENVgIGd9qAco3+DGAuKEAfUqsAT+f6w
	 QVY8ddjQI74ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9ABC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828530277.22600.4165985974423941839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ec6c26059d8b53730efabaa84b3bd166fede9915a4d5366d159a8d88ebf2a8
Date: Thu, 13 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718285302
