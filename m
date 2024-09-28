Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243C418756A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727529954; cv=none; b=MQs4B2YXjmeVQWiXjCllvdH0HgdP807zcVGkL97btNmJoSDmonKgmlKzg2k+ORqJ9Z+wFSBmDYAgia5pq3pYUIokNIgEp8DbYkp3h0n8RM+lNTk51IglOnFWC18Mv+DTIUnZ/x206xc1oTujJM2ONSgnyKanAtEfisHsKwP7J9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727529954; c=relaxed/simple;
	bh=V4ZcqBP6t8rACeKoQkkyrX0KRr3EmsZhWpkSCE9bOuU=;
	h=To:Subject:From:Message-Id:Date; b=P4FvvgphF/3QNfM2SQl8GW1ylwX91HE2AZKVmyM4FKLl3JP+5YtRJ+5ldkskCARKvQASMj2LVJYBLRJ7jHh2+sACmhBdu5wM8aNyxaFErUUq1PeV3nfa0yd6q9nBxbgUaMxzG/+iyeIwo3Be8Fq+O8IFPI4Xy141BN51DqA80DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5xF1rS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5xF1rS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44CFC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727529953;
	bh=V4ZcqBP6t8rACeKoQkkyrX0KRr3EmsZhWpkSCE9bOuU=;
	h=To:Subject:From:Date:From;
	b=a5xF1rS+Ks63ajLOqZ8ZsSUmOpY/TFEBP+TMD40RJhY/L6vfIfHLxQ8c5wYQFZfPF
	 xOEv7q3E3uplA7bogjmMDydwub7r0A1VDj4/CQcPaHvgqHKRA760G51E3oc1StYIJq
	 9k1WQzbUfdQzS3Sn3Ns8Wwz1uWXQhu/tq4V7Ybqk14KmRezgf49VueyZEik0szEQaC
	 gEUpyJQjBmPOBXV/VQ0ZYSr7VxXYeqWglt37J89eX4wRm7pbPLWsPSTA7FlgI2AQkP
	 dVkXqwEHHjYr8iTZJWWIvY5XJd+mS0TGJcxD0qdYI0q02yFiTzaC4iI2LZXFsDbszP
	 5ATvwGoBRjtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C40DCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752995361.1396.1113743241944025388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696fb6f7a8c5431930ac5e21350df9d4c8809e71e796c82a1ebe2eb7a601fca7
Date: Sat, 28 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727529953
