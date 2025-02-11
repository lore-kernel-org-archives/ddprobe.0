Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549E263889
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739307654; cv=none; b=cLnjQ7SojJLnh7jlS/IAf2PECxjORwzZV685OkTBMXv30R9SlysbjUvjekddg9Ok+kvn6yDQb4XeHjmUTZMGBsikE/huUnHQo77MEJjbMaNhJxc8drpUaqW8Kdyi17qjmgJa/Ed01xf4uDt8mexunJjf3MzLf/rGBco6yULZ5+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739307654; c=relaxed/simple;
	bh=uu4xU1lZArog0ppA/72q/lCEHDGYwj8z1y+1LW9jHXk=;
	h=To:Subject:From:Message-Id:Date; b=TS5A3cqg3b1sntlztoPPoKzusEHr9pbIecp5hYnz7CocyRSOLn1ehVmYhekKIkWvOeO90nQmAopXQF5lvtg+EsjRMfxY7rnARLC9isOY4HVC+vAL3IFS2wtt0qVm0JnVhSxoa3k8vsBRwQkqmpzMZz99OefaAKjCj9OYPPZCRnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjLnBONU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjLnBONU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739307653;
	bh=uu4xU1lZArog0ppA/72q/lCEHDGYwj8z1y+1LW9jHXk=;
	h=To:Subject:From:Date:From;
	b=NjLnBONULvdYmBeOT60IwWJvNdEUvrFn7a6YZlWtYmx8kISgHPsSUyZ5BjkqGuVlb
	 9TVtvNrXDdFxfqvbw+Wx7MlUiPlc9wFUZ5ARrtA+JNlYcq3KNcnWPK3SZYjh68yZP0
	 IyZMGEnyBob3uIMGUT4hxqQ2gfELop+Kvx5JvZ4Gj/OGxP5QJwPnrYm5GsscVzeBH2
	 yHP1LZKSLLKlHHJ4DO3bV8TcV+wloInQcTTTRSrq2RpiDvJjYaZxTtSBNmUdHzmDGF
	 JqCNZKC/JyGdPPYDavYSAodP0wTYfqwhM7BWdTBUAT4++tvTmjB0uqMJgGlsZfAg8/
	 /skgZp9mQqcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB8C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930765360.7120.10491992754312335261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de6b00e884b1c41ec2f74cc8ef9226cb48bebb130f16b3242dd250ae066e844
Date: Tue, 11 Feb 2025 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739307653
