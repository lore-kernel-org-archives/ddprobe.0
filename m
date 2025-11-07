Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F838DEC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762549794; cv=none; b=kSQxinuwQkhOLSaTesncJ9eRQIsttym0rgTMyuXxMvSxVFnOzNNDXzbp+qJhsNnNzJXrvZHGZsuZFYStUNiEx196Uh+DO/1bRwm+/4kIW+lyx5Ki/MI5AmSH7Wybiqi+EqcAkjSClVw16unFj6eIIOHa9Q7CO/NOSFSc2eOuF8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762549794; c=relaxed/simple;
	bh=HkHlEPMnmgkNo7YnCNZBOHBpF+8ZJr8Ah136RxpRID4=;
	h=To:Subject:From:Message-Id:Date; b=Yf9QG1XPwJEOnN2zHDa2JrO2R3RGWwciyShst8Xx6Q3JlxELhJJqyx+QHG6kGZ/szS47TrzV85S+BqstOa8ylhmmkQuVlugQ8hz3TiVbd96sJHdtIRrJz9lVmxm6NnmWyVRad+MgkDI6Rwsi4+CkP0QwLpzVHa3PSTrdfXg1FWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIhnmQZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIhnmQZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE4C4DE0A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762549793;
	bh=HkHlEPMnmgkNo7YnCNZBOHBpF+8ZJr8Ah136RxpRID4=;
	h=To:Subject:From:Date:From;
	b=fIhnmQZuZa1iueSyFytj65lPDXEVvvl6ZrgidwQFT1g/catd4yLQBLwNVASwMQlq2
	 immAA9h+pkny0TdBvtYEWzrwROzmYlaAk/wM1kLYM4/MIhotrLUwKzLTDKiZZ79yOa
	 qXStmQcaf4jLvsr6WSbKoF8Q+LuUBWmxGlwtJioBhnN5SBDj82nRjV096p51YFgWWz
	 WWyfqBWp+Z8nlYlYgG6oK6z0NrgWmiRroqtvpw1NskzqCpiKBnWc7orByJlZeVGcIH
	 FO7RWNo9kc5tGObllehtOXkmYSJ9fc1mDxK2iTx+siD12WbZnN+PmY07xLk4dFsles
	 VZ45cXOR3x2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93538CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254979357.24414.10551021105126250806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd57ea88907d8fea16113ecc99c45343c656606fb6d03297b9705ee8549a183
Date: Fri, 07 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762549793
